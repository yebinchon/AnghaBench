
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ type; int (* do_cmd ) (struct comedi_device*,struct comedi_subdevice*) ;void* busy; struct comedi_async* async; } ;
struct comedi_device {scalar_t__ n_subdevices; struct comedi_subdevice* subdevices; } ;
struct comedi_cmd {scalar_t__ subdev; int flags; } ;
struct comedi_async {int cb_mask; struct comedi_cmd cmd; } ;


 int COMEDI_CB_EOS ;
 scalar_t__ COMEDI_SUBD_UNUSED ;
 int EBUSY ;
 int EIO ;
 int ENODEV ;
 unsigned int SRF_RUNNING ;
 int TRIG_WAKE_EOS ;
 int comedi_reset_async_buf (struct comedi_async*) ;
 int comedi_set_subdevice_runflags (struct comedi_subdevice*,int ,unsigned int) ;
 int stub1 (struct comedi_device*,struct comedi_subdevice*) ;

int comedi_command(void *d, struct comedi_cmd *cmd)
{
 struct comedi_device *dev = (struct comedi_device *)d;
 struct comedi_subdevice *s;
 struct comedi_async *async;
 unsigned runflags;

 if (cmd->subdev >= dev->n_subdevices)
  return -ENODEV;

 s = dev->subdevices + cmd->subdev;
 if (s->type == COMEDI_SUBD_UNUSED)
  return -EIO;

 async = s->async;
 if (async == ((void*)0))
  return -ENODEV;

 if (s->busy)
  return -EBUSY;
 s->busy = d;

 if (async->cb_mask & COMEDI_CB_EOS)
  cmd->flags |= TRIG_WAKE_EOS;

 async->cmd = *cmd;

 runflags = SRF_RUNNING;

 comedi_set_subdevice_runflags(s, ~0, runflags);

 comedi_reset_async_buf(async);

 return s->do_cmd(dev, s);
}
