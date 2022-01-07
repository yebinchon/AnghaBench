
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unioxx5_subd_priv {int usp_iobase; } ;
struct comedi_subdevice {struct unioxx5_subd_priv* private; } ;
struct comedi_device {int n_subdevices; struct comedi_subdevice* subdevices; } ;


 int UNIOXX5_SIZE ;
 int kfree (struct unioxx5_subd_priv*) ;
 int release_region (int ,int ) ;

__attribute__((used)) static int unioxx5_detach(struct comedi_device *dev)
{
 int i;
 struct comedi_subdevice *subdev;
 struct unioxx5_subd_priv *usp;

 for (i = 0; i < dev->n_subdevices; i++) {
  subdev = &dev->subdevices[i];
  usp = subdev->private;
  release_region(usp->usp_iobase, UNIOXX5_SIZE);
  kfree(subdev->private);
 }

 return 0;
}
