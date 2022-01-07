
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_event_info {int (* func ) (int ,struct gpio_event_info*,int *,int) ;} ;
struct gpio_event {int * state; int input_dev; TYPE_1__* info; } ;
struct TYPE_2__ {int info_count; struct gpio_event_info** info; } ;


 int ENODEV ;
 int GPIO_EVENT_FUNC_INIT ;
 int GPIO_EVENT_FUNC_RESUME ;
 int pr_err (char*) ;
 int stub1 (int ,struct gpio_event_info*,int *,int) ;
 int stub2 (int ,struct gpio_event_info*,int *,int) ;

__attribute__((used)) static int gpio_event_call_all_func(struct gpio_event *ip, int func)
{
 int i;
 int ret;
 struct gpio_event_info **ii;

 if (func == GPIO_EVENT_FUNC_INIT || func == GPIO_EVENT_FUNC_RESUME) {
  ii = ip->info->info;
  for (i = 0; i < ip->info->info_count; i++, ii++) {
   if ((*ii)->func == ((void*)0)) {
    ret = -ENODEV;
    pr_err("gpio_event_probe: Incomplete pdata, "
     "no function\n");
    goto err_no_func;
   }
   ret = (*ii)->func(ip->input_dev, *ii, &ip->state[i],
       func);
   if (ret) {
    pr_err("gpio_event_probe: function failed\n");
    goto err_func_failed;
   }
  }
  return 0;
 }

 ret = 0;
 i = ip->info->info_count;
 ii = ip->info->info + i;
 while (i > 0) {
  i--;
  ii--;
  (*ii)->func(ip->input_dev, *ii, &ip->state[i], func & ~1);
err_func_failed:
err_no_func:
  ;
 }
 return ret;
}
