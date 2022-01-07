
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct comedi_subdevice {scalar_t__ type; int (* insn_read ) (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int*) ;int (* insn_write ) (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int*) ;int (* insn_bits ) (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int*) ;int (* insn_config ) (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int*) ;int * busy; TYPE_1__* async; } ;
struct comedi_insn {int insn; int* data; int n; scalar_t__ subdev; int chanspec; } ;
struct comedi_device {scalar_t__ n_subdevices; struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {int (* inttrig ) (struct comedi_device*,struct comedi_subdevice*,int) ;} ;


 scalar_t__ COMEDI_SUBD_UNUSED ;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;




 int INSN_MASK_SPECIAL ;



 int check_chanlist (struct comedi_subdevice*,int,int *) ;
 int do_gettimeofday (struct timeval*) ;
 int printk (char*,...) ;
 int stub1 (struct comedi_device*,struct comedi_subdevice*,int) ;
 int stub2 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int*) ;
 int stub3 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int*) ;
 int stub4 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int*) ;
 int stub5 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int*) ;
 int udelay (int) ;

int comedi_do_insn(void *d, struct comedi_insn *insn)
{
 struct comedi_device *dev = (struct comedi_device *)d;
 struct comedi_subdevice *s;
 int ret = 0;

 if (insn->insn & INSN_MASK_SPECIAL) {
  switch (insn->insn) {
  case 132:
   {
    struct timeval tv;

    do_gettimeofday(&tv);
    insn->data[0] = tv.tv_sec;
    insn->data[1] = tv.tv_usec;
    ret = 2;

    break;
   }
  case 129:

   if (insn->n != 1 || insn->data[0] >= 100) {
    ret = -EINVAL;
    break;
   }
   udelay(insn->data[0]);
   ret = 1;
   break;
  case 131:
   if (insn->n != 1) {
    ret = -EINVAL;
    break;
   }
   if (insn->subdev >= dev->n_subdevices) {
    printk("%d not usable subdevice\n",
           insn->subdev);
    ret = -EINVAL;
    break;
   }
   s = dev->subdevices + insn->subdev;
   if (!s->async) {
    printk("no async\n");
    ret = -EINVAL;
    break;
   }
   if (!s->async->inttrig) {
    printk("no inttrig\n");
    ret = -EAGAIN;
    break;
   }
   ret = s->async->inttrig(dev, s, insn->data[0]);
   if (ret >= 0)
    ret = 1;
   break;
  default:
   ret = -EINVAL;
  }
 } else {

  if (insn->subdev >= dev->n_subdevices) {
   ret = -EINVAL;
   goto error;
  }
  s = dev->subdevices + insn->subdev;

  if (s->type == COMEDI_SUBD_UNUSED) {
   printk("%d not useable subdevice\n", insn->subdev);
   ret = -EIO;
   goto error;
  }



  ret = check_chanlist(s, 1, &insn->chanspec);
  if (ret < 0) {
   printk("bad chanspec\n");
   ret = -EINVAL;
   goto error;
  }

  if (s->busy) {
   ret = -EBUSY;
   goto error;
  }
  s->busy = d;

  switch (insn->insn) {
  case 130:
   ret = s->insn_read(dev, s, insn, insn->data);
   break;
  case 128:
   ret = s->insn_write(dev, s, insn, insn->data);
   break;
  case 134:
   ret = s->insn_bits(dev, s, insn, insn->data);
   break;
  case 133:

   ret = s->insn_config(dev, s, insn, insn->data);
   break;
  default:
   ret = -EINVAL;
   break;
  }

  s->busy = ((void*)0);
 }
 if (ret < 0)
  goto error;
error:

 return ret;
}
