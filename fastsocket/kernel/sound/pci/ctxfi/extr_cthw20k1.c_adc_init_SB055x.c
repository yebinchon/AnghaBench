
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;


 int adc_input_select_SB055x (struct hw*,int,int) ;

__attribute__((used)) static int adc_init_SB055x(struct hw *hw, int input, int mic20db)
{
 return adc_input_select_SB055x(hw, input, mic20db);
}
