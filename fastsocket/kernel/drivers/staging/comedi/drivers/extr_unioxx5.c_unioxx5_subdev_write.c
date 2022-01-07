
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unioxx5_subd_priv {int* usp_module_type; } ;
struct comedi_subdevice {struct unioxx5_subd_priv* private; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int minor; } ;


 int CR_CHAN (int ) ;
 int MODULE_DIGITAL ;
 int __unioxx5_analog_write (struct unioxx5_subd_priv*,unsigned int*,int,int ) ;
 int __unioxx5_digital_write (struct unioxx5_subd_priv*,unsigned int*,int,int ) ;

__attribute__((used)) static int unioxx5_subdev_write(struct comedi_device *dev,
    struct comedi_subdevice *subdev,
    struct comedi_insn *insn, unsigned int *data)
{
 struct unioxx5_subd_priv *usp = subdev->private;
 int channel, type;

 channel = CR_CHAN(insn->chanspec);
 type = usp->usp_module_type[channel / 2];

 if (type == MODULE_DIGITAL) {
  if (!__unioxx5_digital_write(usp, data, channel, dev->minor))
   return -1;
 } else {
  if (!__unioxx5_analog_write(usp, data, channel, dev->minor))
   return -1;
 }

 return 1;
}
