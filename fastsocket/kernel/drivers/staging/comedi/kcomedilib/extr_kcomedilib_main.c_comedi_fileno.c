
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int minor; } ;



int comedi_fileno(void *d)
{
 struct comedi_device *dev = (struct comedi_device *)d;


 return dev->minor;
}
