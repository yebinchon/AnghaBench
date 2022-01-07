
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct enc_private {int (* SetEnable ) (struct comedi_device*,struct enc_private*,int ) ;} ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ irq; int minor; } ;
struct comedi_cmd {int scan_begin_src; int flags; int const start_src; int convert_src; int stop_src; int start_arg; int stop_arg; int convert_arg; int scan_begin_arg; } ;
struct TYPE_4__ {int ai_cmd_running; int ai_continous; scalar_t__ base_addr; int ai_sample_count; scalar_t__ ai_convert_count; } ;
struct TYPE_3__ {int * inttrig; struct comedi_cmd cmd; } ;


 int CLKENAB_ALWAYS ;
 int CLKENAB_INDEX ;
 int DEBUG (char*,...) ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int IRQ_GPIO3 ;
 int IRQ_RPS1 ;
 int MC1_ERPS1 ;
 int MC_ENABLE (int ,int ) ;
 scalar_t__ P_IER ;
 scalar_t__ P_ISR ;
 int P_MC1 ;
 int ResetADC (struct comedi_device*,int *) ;






 int TRIG_ROUND_MASK ;

 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 struct enc_private* encpriv ;
 int printk (char*,int ) ;
 int * s626_ai_inttrig ;
 int s626_ai_load_polllist (int *,struct comedi_cmd*) ;
 int s626_dio_clear_irq (struct comedi_device*) ;
 int s626_dio_set_irq (struct comedi_device*,int ) ;
 int s626_ns_to_timer (int*,int) ;
 int s626_timer_load (struct comedi_device*,struct enc_private*,int) ;
 int stub1 (struct comedi_device*,struct enc_private*,int ) ;
 int stub2 (struct comedi_device*,struct enc_private*,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int s626_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{

 uint8_t ppl[16];
 struct comedi_cmd *cmd = &s->async->cmd;
 struct enc_private *k;
 int tick;

 DEBUG("s626_ai_cmd: entering command function\n");

 if (devpriv->ai_cmd_running) {
  printk("s626_ai_cmd: Another ai_cmd is running %d\n",
         dev->minor);
  return -EBUSY;
 }

 writel(0, devpriv->base_addr + P_IER);


 writel(IRQ_RPS1 | IRQ_GPIO3, devpriv->base_addr + P_ISR);


 s626_dio_clear_irq(dev);



 devpriv->ai_cmd_running = 0;


 if (cmd == ((void*)0)) {
  DEBUG("s626_ai_cmd: NULL command\n");
  return -EINVAL;
 } else {
  DEBUG("s626_ai_cmd: command recieved!!!\n");
 }

 if (dev->irq == 0) {
  comedi_error(dev,
        "s626_ai_cmd: cannot run command without an irq");
  return -EIO;
 }

 s626_ai_load_polllist(ppl, cmd);
 devpriv->ai_cmd_running = 1;
 devpriv->ai_convert_count = 0;

 switch (cmd->scan_begin_src) {
 case 132:
  break;
 case 128:

  k = &encpriv[5];
  tick = s626_ns_to_timer((int *)&cmd->scan_begin_arg,
     cmd->flags & TRIG_ROUND_MASK);


  s626_timer_load(dev, k, tick);
  k->SetEnable(dev, k, CLKENAB_ALWAYS);

  DEBUG("s626_ai_cmd: scan trigger timer is set with value %d\n",
        tick);

  break;
 case 133:

  if (cmd->start_src != 133)
   s626_dio_set_irq(dev, cmd->scan_begin_arg);

  DEBUG("s626_ai_cmd: External scan trigger is set!!!\n");

  break;
 }

 switch (cmd->convert_src) {
 case 129:
  break;
 case 128:

  k = &encpriv[4];
  tick = s626_ns_to_timer((int *)&cmd->convert_arg,
     cmd->flags & TRIG_ROUND_MASK);


  s626_timer_load(dev, k, tick);
  k->SetEnable(dev, k, CLKENAB_INDEX);

  DEBUG
      ("s626_ai_cmd: convert trigger timer is set with value %d\n",
       tick);
  break;
 case 133:

  if (cmd->scan_begin_src != 133
      && cmd->start_src == 133)
   s626_dio_set_irq(dev, cmd->convert_arg);

  DEBUG("s626_ai_cmd: External convert trigger is set!!!\n");

  break;
 }

 switch (cmd->stop_src) {
 case 134:

  devpriv->ai_sample_count = cmd->stop_arg;
  devpriv->ai_continous = 0;
  break;
 case 130:

  devpriv->ai_continous = 1;
  devpriv->ai_sample_count = 0;
  break;
 }

 ResetADC(dev, ppl);

 switch (cmd->start_src) {
 case 129:




  MC_ENABLE(P_MC1, MC1_ERPS1);

  DEBUG("s626_ai_cmd: ADC triggered\n");
  s->async->inttrig = ((void*)0);
  break;
 case 133:

  s626_dio_set_irq(dev, cmd->start_arg);

  DEBUG("s626_ai_cmd: External start trigger is set!!!\n");

  s->async->inttrig = ((void*)0);
  break;
 case 131:
  s->async->inttrig = s626_ai_inttrig;
  break;
 }


 writel(IRQ_GPIO3 | IRQ_RPS1, devpriv->base_addr + P_IER);

 DEBUG("s626_ai_cmd: command function terminated\n");

 return 0;
}
