
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw {int dummy; } ;
typedef enum ADCSRC { ____Placeholder_ADCSRC } ADCSRC ;




 int GPIO ;
 int hw_read_20kx (struct hw*,int ) ;

__attribute__((used)) static int is_adc_input_selected_hendrix(struct hw *hw, enum ADCSRC type)
{
 u32 data;

 data = hw_read_20kx(hw, GPIO);
 switch (type) {
 case 128:
  data = (data & (0x1 << 7)) ? 1 : 0;
  break;
 case 129:
  data = (data & (0x1 << 7)) ? 0 : 1;
  break;
 default:
  data = 0;
 }
 return data;
}
