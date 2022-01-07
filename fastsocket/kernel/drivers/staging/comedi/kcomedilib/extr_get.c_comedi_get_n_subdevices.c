
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int n_subdevices; } ;



int comedi_get_n_subdevices(void *d)
{
 struct comedi_device *dev = (struct comedi_device *)d;

 return dev->n_subdevices;
}
