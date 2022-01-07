
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_runtime {int implementation_private; } ;
struct TYPE_2__ {scalar_t__ set_master; } ;


 int ftr_gpio_set_amp (struct gpio_runtime*,int ) ;
 int ftr_gpio_set_headphone (struct gpio_runtime*,int ) ;
 int ftr_gpio_set_lineout (struct gpio_runtime*,int ) ;
 int ftr_gpio_set_master (struct gpio_runtime*,int ) ;
 TYPE_1__ methods ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ftr_gpio_all_amps_off(struct gpio_runtime *rt)
{
 int saved;

 if (unlikely(!rt)) return;
 saved = rt->implementation_private;
 ftr_gpio_set_headphone(rt, 0);
 ftr_gpio_set_amp(rt, 0);
 ftr_gpio_set_lineout(rt, 0);
 if (methods.set_master)
  ftr_gpio_set_master(rt, 0);
 rt->implementation_private = saved;
}
