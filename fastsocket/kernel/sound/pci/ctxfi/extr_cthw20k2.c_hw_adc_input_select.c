
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw {int dummy; } ;
typedef enum ADCSRC { ____Placeholder_ADCSRC } ADCSRC ;




 int GPIO_DATA ;
 int MAKE_WM8775_ADDR (int ,int) ;
 int MAKE_WM8775_DATA (int) ;
 int WM8775_AADCL ;
 int WM8775_AADCR ;
 int WM8775_ADCMC ;
 int hw20k2_i2c_write (struct hw*,int ,int ) ;
 int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,int) ;

__attribute__((used)) static int hw_adc_input_select(struct hw *hw, enum ADCSRC type)
{
 u32 data;

 data = hw_read_20kx(hw, GPIO_DATA);
 switch (type) {
 case 128:
  data |= (0x1 << 14);
  hw_write_20kx(hw, GPIO_DATA, data);
  hw20k2_i2c_write(hw, MAKE_WM8775_ADDR(WM8775_ADCMC, 0x101),
    MAKE_WM8775_DATA(0x101));
  hw20k2_i2c_write(hw, MAKE_WM8775_ADDR(WM8775_AADCL, 0xE7),
    MAKE_WM8775_DATA(0xE7));
  hw20k2_i2c_write(hw, MAKE_WM8775_ADDR(WM8775_AADCR, 0xE7),
    MAKE_WM8775_DATA(0xE7));
  break;
 case 129:
  data &= ~(0x1 << 14);
  hw_write_20kx(hw, GPIO_DATA, data);
  hw20k2_i2c_write(hw, MAKE_WM8775_ADDR(WM8775_ADCMC, 0x102),
    MAKE_WM8775_DATA(0x102));
  hw20k2_i2c_write(hw, MAKE_WM8775_ADDR(WM8775_AADCL, 0xCF),
    MAKE_WM8775_DATA(0xCF));
  hw20k2_i2c_write(hw, MAKE_WM8775_ADDR(WM8775_AADCR, 0xCF),
    MAKE_WM8775_DATA(0xCF));
  break;
 default:
  break;
 }

 return 0;
}
