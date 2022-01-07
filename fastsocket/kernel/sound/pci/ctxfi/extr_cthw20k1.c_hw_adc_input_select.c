
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int model; } ;
typedef enum ADCSRC { ____Placeholder_ADCSRC } ADCSRC ;


 int ADC_MICIN ;



 int adc_input_select_SB055x (struct hw*,int,int) ;
 int adc_input_select_SBx (struct hw*,int,int) ;
 int adc_input_select_hendrix (struct hw*,int,int) ;

__attribute__((used)) static int hw_adc_input_select(struct hw *hw, enum ADCSRC type)
{
 int state = type == ADC_MICIN;

 switch (hw->model) {
 case 130:
  return adc_input_select_SB055x(hw, type, state);
 case 129:
  return adc_input_select_hendrix(hw, type, state);
 case 128:
  return adc_input_select_hendrix(hw, type, state);
 default:
  return adc_input_select_SBx(hw, type, state);
 }
}
