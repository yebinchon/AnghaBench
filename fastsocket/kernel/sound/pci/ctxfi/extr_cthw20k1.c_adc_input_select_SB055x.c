
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw {int dummy; } ;
typedef enum ADCSRC { ____Placeholder_ADCSRC } ADCSRC ;






 int GPIO ;
 int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,int) ;

__attribute__((used)) static int
adc_input_select_SB055x(struct hw *hw, enum ADCSRC type, unsigned char boost)
{
 u32 data;
 data = hw_read_20kx(hw, GPIO);
 data &= 0xec73;
 switch (type) {
 case 129:
  data |= (0x1<<7) | (0x1<<8) | (0x1<<9) ;
  data |= boost ? (0x1<<2) : 0;
  break;
 case 130:
  data |= (0x1<<8);
  break;
 case 131:
  data |= (0x1<<8) | (0x1<<12);
  break;
 case 128:
  data |= (0x1<<12);
  break;
 default:
  return -1;
 }

 hw_write_20kx(hw, GPIO, data);

 return 0;
}
