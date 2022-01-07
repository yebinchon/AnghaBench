
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_input_state {int * key_state; TYPE_2__* info; } ;
struct TYPE_4__ {int keymap_size; TYPE_1__* keymap; } ;
struct TYPE_3__ {int gpio; } ;


 unsigned long IRQF_TRIGGER_FALLING ;
 unsigned long IRQF_TRIGGER_RISING ;
 int enable_irq_wake (unsigned int) ;
 int free_irq (unsigned int,int *) ;
 int gpio_event_input_irq_handler ;
 unsigned int gpio_to_irq (int ) ;
 int pr_err (char*,int ,unsigned int) ;
 int request_irq (unsigned int,int ,unsigned long,char*,int *) ;

__attribute__((used)) static int gpio_event_input_request_irqs(struct gpio_input_state *ds)
{
 int i;
 int err;
 unsigned int irq;
 unsigned long req_flags = IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING;

 for (i = 0; i < ds->info->keymap_size; i++) {
  err = irq = gpio_to_irq(ds->info->keymap[i].gpio);
  if (err < 0)
   goto err_gpio_get_irq_num_failed;
  err = request_irq(irq, gpio_event_input_irq_handler,
      req_flags, "gpio_keys", &ds->key_state[i]);
  if (err) {
   pr_err("gpio_event_input_request_irqs: request_irq "
    "failed for input %d, irq %d\n",
    ds->info->keymap[i].gpio, irq);
   goto err_request_irq_failed;
  }
  enable_irq_wake(irq);
 }
 return 0;

 for (i = ds->info->keymap_size - 1; i >= 0; i--) {
  free_irq(gpio_to_irq(ds->info->keymap[i].gpio),
    &ds->key_state[i]);
err_request_irq_failed:
err_gpio_get_irq_num_failed:
  ;
 }
 return err;
}
