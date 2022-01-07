
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_kp {int timer; int wake_lock; int use_irq; struct gpio_event_matrix_info* keypad_info; } ;
struct gpio_event_matrix_info {unsigned int flags; int ninputs; int noutputs; int * output_gpios; int * input_gpios; } ;
typedef int irqreturn_t ;


 unsigned int GPIOKPF_ACTIVE_HIGH ;
 unsigned int GPIOKPF_DRIVE_INACTIVE ;
 int HRTIMER_MODE_REL ;
 int IRQ_HANDLED ;
 int disable_irq (int ) ;
 int gpio_direction_input (int ) ;
 int gpio_set_value (int ,int) ;
 int gpio_to_irq (int ) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_set (int ,int ) ;
 int wake_lock (int *) ;

__attribute__((used)) static irqreturn_t gpio_keypad_irq_handler(int irq_in, void *dev_id)
{
 int i;
 struct gpio_kp *kp = dev_id;
 struct gpio_event_matrix_info *mi = kp->keypad_info;
 unsigned gpio_keypad_flags = mi->flags;

 if (!kp->use_irq)
  return IRQ_HANDLED;

 for (i = 0; i < mi->ninputs; i++)
  disable_irq(gpio_to_irq(mi->input_gpios[i]));
 for (i = 0; i < mi->noutputs; i++) {
  if (gpio_keypad_flags & GPIOKPF_DRIVE_INACTIVE)
   gpio_set_value(mi->output_gpios[i],
    !(gpio_keypad_flags & GPIOKPF_ACTIVE_HIGH));
  else
   gpio_direction_input(mi->output_gpios[i]);
 }
 wake_lock(&kp->wake_lock);
 hrtimer_start(&kp->timer, ktime_set(0, 0), HRTIMER_MODE_REL);
 return IRQ_HANDLED;
}
