
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ ai_cmd_running; scalar_t__ base_addr; } ;


 int MC1_ERPS1 ;
 int MC_DISABLE (int ,int ) ;
 scalar_t__ P_IER ;
 int P_MC1 ;
 TYPE_1__* devpriv ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s626_ai_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{

 MC_DISABLE(P_MC1, MC1_ERPS1);


 writel(0, devpriv->base_addr + P_IER);

 devpriv->ai_cmd_running = 0;

 return 0;
}
