
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_kp {TYPE_1__* keypad_info; int keys_pressed; } ;
struct TYPE_2__ {int ninputs; int noutputs; } ;


 int clear_phantom_key (struct gpio_kp*,int,int) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int restore_keys_for_input(struct gpio_kp *kp, int out, int in)
{
 int rv = 0;
 int key_index;

 key_index = out * kp->keypad_info->ninputs + in;
 while (out < kp->keypad_info->noutputs) {
  if (test_bit(key_index, kp->keys_pressed)) {
   rv = 1;
   clear_phantom_key(kp, out, in);
  }
  key_index += kp->keypad_info->ninputs;
  out++;
 }
 return rv;
}
