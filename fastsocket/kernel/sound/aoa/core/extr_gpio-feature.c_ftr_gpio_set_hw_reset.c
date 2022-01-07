
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_runtime {int dummy; } ;


 int PMAC_FTR_READ_GPIO ;
 int PMAC_FTR_WRITE_GPIO ;
 int SWITCH_GPIO (int ,int,int) ;
 int hw_reset ;
 scalar_t__ hw_reset_gpio ;
 int pmac_call_feature (int ,int *,scalar_t__,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ftr_gpio_set_hw_reset(struct gpio_runtime *rt, int on)
{
 int v;

 if (unlikely(!rt)) return;
 if (hw_reset_gpio < 0)
  return;

 v = pmac_call_feature(PMAC_FTR_READ_GPIO, ((void*)0),
         hw_reset_gpio, 0);
 v = SWITCH_GPIO(hw_reset, v, on);
 pmac_call_feature(PMAC_FTR_WRITE_GPIO, ((void*)0),
     hw_reset_gpio, v);
}
