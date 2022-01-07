
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int model; } ;
typedef enum ADCSRC { ____Placeholder_ADCSRC } ADCSRC ;





 int is_adc_input_selected_SB055x (struct hw*,int) ;
 int is_adc_input_selected_SBx (struct hw*,int) ;
 int is_adc_input_selected_hendrix (struct hw*,int) ;

__attribute__((used)) static int hw_is_adc_input_selected(struct hw *hw, enum ADCSRC type)
{
 switch (hw->model) {
 case 130:
  return is_adc_input_selected_SB055x(hw, type);
 case 129:
  return is_adc_input_selected_hendrix(hw, type);
 case 128:
  return is_adc_input_selected_hendrix(hw, type);
 default:
  return is_adc_input_selected_SBx(hw, type);
 }
}
