
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {scalar_t__ model; } ;
struct adc_conf {int mic20db; int input; } ;


 scalar_t__ CTSB055X ;
 int adc_init_SB055x (struct hw*,int ,int ) ;
 int adc_init_SBx (struct hw*,int ,int ) ;

__attribute__((used)) static int hw_adc_init(struct hw *hw, const struct adc_conf *info)
{
 if (hw->model == CTSB055X)
  return adc_init_SB055x(hw, info->input, info->mic20db);
 else
  return adc_init_SBx(hw, info->input, info->mic20db);
}
