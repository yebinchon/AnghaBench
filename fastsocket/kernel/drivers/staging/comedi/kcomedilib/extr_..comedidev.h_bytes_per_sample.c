
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; } ;


 int SDF_LSAMPL ;

__attribute__((used)) static inline unsigned int bytes_per_sample(const struct comedi_subdevice *subd)
{
 if (subd->subdev_flags & SDF_LSAMPL)
  return sizeof(unsigned int);
 else
  return sizeof(short);
}
