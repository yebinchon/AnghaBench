
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; } ;






 unsigned int CR_AREF (unsigned int) ;
 int DPRINTK (char*,unsigned int) ;
 int SDF_COMMON ;
 int SDF_DIFF ;
 int SDF_GROUND ;
 int SDF_OTHER ;

__attribute__((used)) static int aref_invalid(struct comedi_subdevice *s, unsigned int chanspec)
{
 unsigned int aref;


 return 0;

 aref = CR_AREF(chanspec);
 switch (aref) {
 case 130:
  if (s->subdev_flags & SDF_DIFF)
   return 0;
  break;
 case 131:
  if (s->subdev_flags & SDF_COMMON)
   return 0;
  break;
 case 129:
  if (s->subdev_flags & SDF_GROUND)
   return 0;
  break;
 case 128:
  if (s->subdev_flags & SDF_OTHER)
   return 0;
  break;
 default:
  break;
 }
 DPRINTK("subdevice does not support aref %i", aref);
 return 1;
}
