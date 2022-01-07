
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct TYPE_2__ {int pcspkr; int timer_active; } ;



 int PIT_TICK_RATE ;


 scalar_t__ atomic_read (int *) ;
 TYPE_1__ pcsp_chip ;
 int pcspkr_do_sound (unsigned int) ;

__attribute__((used)) static int pcspkr_input_event(struct input_dev *dev, unsigned int type,
         unsigned int code, int value)
{
 unsigned int count = 0;

 if (atomic_read(&pcsp_chip.timer_active) || !pcsp_chip.pcspkr)
  return 0;

 switch (type) {
 case 130:
  switch (code) {
  case 129:
   if (value)
    value = 1000;
  case 128:
   break;
  default:
   return -1;
  }
  break;

 default:
  return -1;
 }

 if (value > 20 && value < 32767)
  count = PIT_TICK_RATE / value;

 pcspkr_do_sound(count);

 return 0;
}
