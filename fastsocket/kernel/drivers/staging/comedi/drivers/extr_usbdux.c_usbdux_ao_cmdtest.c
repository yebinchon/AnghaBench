
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbduxsub {TYPE_1__* interface; int probed; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int minor; struct usbduxsub* private; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; scalar_t__ start_arg; int scan_begin_arg; int convert_arg; scalar_t__ scan_end_arg; scalar_t__ chanlist_len; scalar_t__ stop_arg; } ;
struct TYPE_2__ {int dev; } ;


 int EFAULT ;
 int ENODEV ;
 int TRIG_COUNT ;
 int TRIG_EXT ;
 int TRIG_FOLLOW ;
 int TRIG_INT ;
 int TRIG_NONE ;
 int TRIG_NOW ;
 int TRIG_TIMER ;
 int dev_dbg (int *,char*,int ,...) ;

__attribute__((used)) static int usbdux_ao_cmdtest(struct comedi_device *dev,
        struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
 int err = 0, tmp;
 struct usbduxsub *this_usbduxsub = dev->private;

 if (!this_usbduxsub)
  return -EFAULT;

 if (!(this_usbduxsub->probed))
  return -ENODEV;

 dev_dbg(&this_usbduxsub->interface->dev,
  "comedi%d: usbdux_ao_cmdtest\n", dev->minor);



 tmp = cmd->start_src;
 cmd->start_src &= TRIG_NOW | TRIG_INT;
 if (!cmd->start_src || tmp != cmd->start_src)
  err++;


 tmp = cmd->scan_begin_src;


 if (0) {


  cmd->scan_begin_src &= TRIG_FOLLOW;
 } else {

  cmd->scan_begin_src &= TRIG_TIMER;
 }
 if (!cmd->scan_begin_src || tmp != cmd->scan_begin_src)
  err++;


 tmp = cmd->convert_src;

 if (0) {



  cmd->convert_src &= TRIG_TIMER;
 } else {


  cmd->convert_src &= TRIG_NOW;
 }
 if (!cmd->convert_src || tmp != cmd->convert_src)
  err++;


 tmp = cmd->scan_end_src;
 cmd->scan_end_src &= TRIG_COUNT;
 if (!cmd->scan_end_src || tmp != cmd->scan_end_src)
  err++;


 tmp = cmd->stop_src;
 cmd->stop_src &= TRIG_COUNT | TRIG_NONE;
 if (!cmd->stop_src || tmp != cmd->stop_src)
  err++;

 if (err)
  return 1;





 if (cmd->scan_begin_src != TRIG_FOLLOW &&
     cmd->scan_begin_src != TRIG_EXT &&
     cmd->scan_begin_src != TRIG_TIMER)
  err++;
 if (cmd->stop_src != TRIG_COUNT && cmd->stop_src != TRIG_NONE)
  err++;

 if (err)
  return 2;



 if (cmd->start_arg != 0) {
  cmd->start_arg = 0;
  err++;
 }

 if (cmd->scan_begin_src == TRIG_FOLLOW) {

  if (cmd->scan_begin_arg != 0) {
   cmd->scan_begin_arg = 0;
   err++;
  }
 }

 if (cmd->scan_begin_src == TRIG_TIMER) {

  if (cmd->scan_begin_arg < 1000000) {
   cmd->scan_begin_arg = 1000000;
   err++;
  }
 }

 if (cmd->convert_src == TRIG_TIMER) {
  if (cmd->convert_arg < 125000) {
   cmd->convert_arg = 125000;
   err++;
  }
 }


 if (cmd->scan_end_arg != cmd->chanlist_len) {
  cmd->scan_end_arg = cmd->chanlist_len;
  err++;
 }

 if (cmd->stop_src == TRIG_COUNT) {

 } else {

  if (cmd->stop_arg != 0) {
   cmd->stop_arg = 0;
   err++;
  }
 }

 dev_dbg(&this_usbduxsub->interface->dev, "comedi%d: err=%d, "
  "scan_begin_src=%d, scan_begin_arg=%d, convert_src=%d, "
  "convert_arg=%d\n", dev->minor, err, cmd->scan_begin_src,
  cmd->scan_begin_arg, cmd->convert_src, cmd->convert_arg);

 if (err)
  return 3;

 return 0;
}
