
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* volume_method ) (int,unsigned char) ;int (* controller ) (int,unsigned char,unsigned char,short) ;int (* panning ) (int,unsigned char,char) ;int (* aftertouch ) (int,unsigned char,unsigned char) ;int (* set_instr ) (int,unsigned char,unsigned char) ;int (* start_note ) (int,unsigned char,unsigned char,unsigned char) ;int (* kill_note ) (int,unsigned char,unsigned char,unsigned char) ;} ;


 int EINVAL ;
 int ENXIO ;







 int max_synthdev ;
 int stub1 (int,unsigned char,unsigned char,unsigned char) ;
 int stub2 (int,unsigned char,unsigned char,unsigned char) ;
 int stub3 (int,unsigned char,unsigned char,unsigned char) ;
 int stub4 (int,unsigned char,unsigned char) ;
 int stub5 (int,unsigned char,unsigned char) ;
 int stub6 (int,unsigned char,char) ;
 int stub7 (int,unsigned char,unsigned char,short) ;
 int stub8 (int,unsigned char) ;
 TYPE_1__** synth_devs ;
 int synth_open_mask ;

__attribute__((used)) static int extended_event(unsigned char *q)
{
 int dev = q[2];

 if (dev < 0 || dev >= max_synthdev)
  return -ENXIO;

 if (!(synth_open_mask & (1 << dev)))
  return -ENXIO;

 switch (q[1])
 {
  case 131:
   synth_devs[dev]->kill_note(dev, q[3], q[4], q[5]);
   break;

  case 130:
   if (q[4] > 127 && q[4] != 255)
    return 0;

   if (q[5] == 0)
   {
    synth_devs[dev]->kill_note(dev, q[3], q[4], q[5]);
    break;
   }
   synth_devs[dev]->start_note(dev, q[3], q[4], q[5]);
   break;

  case 129:
   synth_devs[dev]->set_instr(dev, q[3], q[4]);
   break;

  case 134:
   synth_devs[dev]->aftertouch(dev, q[3], q[4]);
   break;

  case 133:
   synth_devs[dev]->panning(dev, q[3], (char) q[4]);
   break;

  case 132:
   synth_devs[dev]->controller(dev, q[3], q[4], (short) (q[5] | (q[6] << 8)));
   break;

  case 128:
   if (synth_devs[dev]->volume_method != ((void*)0))
    synth_devs[dev]->volume_method(dev, q[3]);
   break;

  default:
   return -EINVAL;
 }
 return 0;
}
