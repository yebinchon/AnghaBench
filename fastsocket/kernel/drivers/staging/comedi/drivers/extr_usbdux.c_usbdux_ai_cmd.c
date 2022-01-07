
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbduxsub {int ai_cmd_running; int* dux_commands; int ai_interval; int ai_timer; int ai_counter; int ai_continous; int sem; scalar_t__ ai_sample_count; TYPE_1__* interface; scalar_t__ high_speed; int probed; } ;
struct comedi_subdevice {TYPE_2__* async; } ;
struct comedi_device {int minor; struct usbduxsub* private; } ;
struct comedi_cmd {int chanlist_len; int scan_begin_arg; scalar_t__ stop_src; scalar_t__ start_src; scalar_t__ stop_arg; int * chanlist; } ;
struct TYPE_4__ {int * inttrig; scalar_t__ cur_chan; struct comedi_cmd cmd; } ;
struct TYPE_3__ {int dev; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int EBUSY ;
 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int NUMCHANNELS ;
 int SENDADCOMMANDS ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_NOW ;
 int create_adc_command (unsigned int,unsigned int) ;
 int dev_dbg (int *,char*,int ,...) ;
 int dev_err (int *,char*,int ,...) ;
 int down (int *) ;
 int send_dux_commands (struct usbduxsub*,int ) ;
 int up (int *) ;
 int * usbdux_ai_inttrig ;
 int usbduxsub_submit_InURBs (struct usbduxsub*) ;

__attribute__((used)) static int usbdux_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int chan, range;
 int i, ret;
 struct usbduxsub *this_usbduxsub = dev->private;
 int result;

 if (!this_usbduxsub)
  return -EFAULT;

 dev_dbg(&this_usbduxsub->interface->dev,
  "comedi%d: usbdux_ai_cmd\n", dev->minor);


 down(&this_usbduxsub->sem);

 if (!(this_usbduxsub->probed)) {
  up(&this_usbduxsub->sem);
  return -ENODEV;
 }
 if (this_usbduxsub->ai_cmd_running) {
  dev_err(&this_usbduxsub->interface->dev, "comedi%d: "
   "ai_cmd not possible. Another ai_cmd is running.\n",
   dev->minor);
  up(&this_usbduxsub->sem);
  return -EBUSY;
 }

 s->async->cur_chan = 0;

 this_usbduxsub->dux_commands[1] = cmd->chanlist_len;
 for (i = 0; i < cmd->chanlist_len; ++i) {
  chan = CR_CHAN(cmd->chanlist[i]);
  range = CR_RANGE(cmd->chanlist[i]);
  if (i >= NUMCHANNELS) {
   dev_err(&this_usbduxsub->interface->dev,
    "comedi%d: channel list too long\n",
    dev->minor);
   break;
  }
  this_usbduxsub->dux_commands[i + 2] =
      create_adc_command(chan, range);
 }

 dev_dbg(&this_usbduxsub->interface->dev,
  "comedi %d: sending commands to the usb device: size=%u\n",
  dev->minor, NUMCHANNELS);

 result = send_dux_commands(this_usbduxsub, SENDADCOMMANDS);
 if (result < 0) {
  up(&this_usbduxsub->sem);
  return result;
 }

 if (this_usbduxsub->high_speed) {





  this_usbduxsub->ai_interval = 1;

  while ((this_usbduxsub->ai_interval) < (cmd->chanlist_len)) {
   this_usbduxsub->ai_interval =
       (this_usbduxsub->ai_interval) * 2;
  }
  this_usbduxsub->ai_timer = cmd->scan_begin_arg / (125000 *
          (this_usbduxsub->
           ai_interval));
 } else {

  this_usbduxsub->ai_interval = 1;
  this_usbduxsub->ai_timer = cmd->scan_begin_arg / 1000000;
 }
 if (this_usbduxsub->ai_timer < 1) {
  dev_err(&this_usbduxsub->interface->dev, "comedi%d: ai_cmd: "
   "timer=%d, scan_begin_arg=%d. "
   "Not properly tested by cmdtest?\n", dev->minor,
   this_usbduxsub->ai_timer, cmd->scan_begin_arg);
  up(&this_usbduxsub->sem);
  return -EINVAL;
 }
 this_usbduxsub->ai_counter = this_usbduxsub->ai_timer;

 if (cmd->stop_src == TRIG_COUNT) {

  this_usbduxsub->ai_sample_count = cmd->stop_arg;
  this_usbduxsub->ai_continous = 0;
 } else {

  this_usbduxsub->ai_continous = 1;
  this_usbduxsub->ai_sample_count = 0;
 }

 if (cmd->start_src == TRIG_NOW) {

  this_usbduxsub->ai_cmd_running = 1;
  ret = usbduxsub_submit_InURBs(this_usbduxsub);
  if (ret < 0) {
   this_usbduxsub->ai_cmd_running = 0;

   up(&this_usbduxsub->sem);
   return ret;
  }
  s->async->inttrig = ((void*)0);
 } else {



  s->async->inttrig = usbdux_ai_inttrig;
 }
 up(&this_usbduxsub->sem);
 return 0;
}
