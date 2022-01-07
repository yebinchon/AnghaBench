
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int * inttrig; } ;


 int DEBUG (char*) ;
 int EINVAL ;
 int MC1_ERPS1 ;
 int MC_ENABLE (int ,int ) ;
 int P_MC1 ;

__attribute__((used)) static int s626_ai_inttrig(struct comedi_device *dev,
      struct comedi_subdevice *s, unsigned int trignum)
{
 if (trignum != 0)
  return -EINVAL;

 DEBUG("s626_ai_inttrig: trigger adc start...");


 MC_ENABLE(P_MC1, MC1_ERPS1);

 s->async->inttrig = ((void*)0);

 DEBUG(" done\n");

 return 1;
}
