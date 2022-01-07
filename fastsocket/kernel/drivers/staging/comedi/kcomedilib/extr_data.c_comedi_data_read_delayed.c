
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int comedi_data_read (void*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int*) ;
 int comedi_data_read_hint (void*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int udelay (unsigned int) ;

int comedi_data_read_delayed(void *dev, unsigned int subdev,
        unsigned int chan, unsigned int range,
        unsigned int aref, unsigned int *data,
        unsigned int nano_sec)
{
 int retval;

 retval = comedi_data_read_hint(dev, subdev, chan, range, aref);
 if (retval < 0)
  return retval;

 udelay((nano_sec + 999) / 1000);

 return comedi_data_read(dev, subdev, chan, range, aref, data);
}
