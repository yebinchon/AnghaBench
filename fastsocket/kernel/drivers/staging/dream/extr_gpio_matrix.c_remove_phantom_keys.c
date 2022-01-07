
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_kp {int some_keys_pressed; int keys_pressed; TYPE_1__* keypad_info; } ;
struct TYPE_2__ {int noutputs; int ninputs; } ;


 int clear_phantom_key (struct gpio_kp*,int,int) ;
 int restore_keys_for_input (struct gpio_kp*,int,int) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static void remove_phantom_keys(struct gpio_kp *kp)
{
 int out, in, inp;
 int key_index;

 if (kp->some_keys_pressed < 3)
  return;

 for (out = 0; out < kp->keypad_info->noutputs; out++) {
  inp = -1;
  key_index = out * kp->keypad_info->ninputs;
  for (in = 0; in < kp->keypad_info->ninputs; in++, key_index++) {
   if (test_bit(key_index, kp->keys_pressed)) {
    if (inp == -1) {
     inp = in;
     continue;
    }
    if (inp >= 0) {
     if (!restore_keys_for_input(kp, out + 1,
         inp))
      break;
     clear_phantom_key(kp, out, inp);
     inp = -2;
    }
    restore_keys_for_input(kp, out, in);
   }
  }
 }
}
