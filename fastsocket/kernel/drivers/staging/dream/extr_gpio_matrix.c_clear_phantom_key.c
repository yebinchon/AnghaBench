
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_kp {int keys_pressed; TYPE_1__* input_dev; struct gpio_event_matrix_info* keypad_info; } ;
struct gpio_event_matrix_info {int ninputs; unsigned short* keymap; int flags; int * input_gpios; int * output_gpios; } ;
struct TYPE_2__ {int key; } ;


 int GPIOKPF_PRINT_PHANTOM_KEYS ;
 int __clear_bit (int,int ) ;
 int pr_info (char*,unsigned short,int,int,int ,int ) ;
 int test_bit (unsigned short,int ) ;

__attribute__((used)) static void clear_phantom_key(struct gpio_kp *kp, int out, int in)
{
 struct gpio_event_matrix_info *mi = kp->keypad_info;
 int key_index = out * mi->ninputs + in;
 unsigned short keycode = mi->keymap[key_index];;

 if (!test_bit(keycode, kp->input_dev->key)) {
  if (mi->flags & GPIOKPF_PRINT_PHANTOM_KEYS)
   pr_info("gpiomatrix: phantom key %x, %d-%d (%d-%d) "
    "cleared\n", keycode, out, in,
    mi->output_gpios[out], mi->input_gpios[in]);
  __clear_bit(key_index, kp->keys_pressed);
 } else {
  if (mi->flags & GPIOKPF_PRINT_PHANTOM_KEYS)
   pr_info("gpiomatrix: phantom key %x, %d-%d (%d-%d) "
    "not cleared\n", keycode, out, in,
    mi->output_gpios[out], mi->input_gpios[in]);
 }
}
