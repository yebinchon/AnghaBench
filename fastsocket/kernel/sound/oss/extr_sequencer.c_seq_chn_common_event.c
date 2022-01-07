
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int max_voice; int* map; } ;
struct TYPE_6__ {int (* bender ) (unsigned char,unsigned char,unsigned short) ;TYPE_2__ alloc; TYPE_1__* chn_info; int (* controller ) (unsigned char,unsigned char,unsigned char,unsigned short) ;int (* set_instr ) (unsigned char,unsigned char,unsigned char) ;} ;
struct TYPE_4__ {unsigned char pgm_num; unsigned short* controllers; unsigned short bender_value; } ;





 int SEQ_2 ;
 int max_synthdev ;
 int num_synths ;
 int seq_mode ;
 int stub1 (unsigned char,unsigned char,unsigned char) ;
 int stub2 (unsigned char,unsigned char,unsigned char) ;
 int stub3 (unsigned char,int,unsigned char,int) ;
 int stub4 (unsigned char,unsigned char,unsigned char,unsigned short) ;
 int stub5 (unsigned char,unsigned char,unsigned char,unsigned short) ;
 int stub6 (unsigned char,int,unsigned short) ;
 int stub7 (unsigned char,unsigned char,unsigned short) ;
 int stub8 (unsigned char,unsigned char,unsigned short) ;
 TYPE_3__** synth_devs ;
 int synth_open_mask ;

__attribute__((used)) static void seq_chn_common_event(unsigned char *event_rec)
{
 unsigned char dev = event_rec[1];
 unsigned char cmd = event_rec[2];
 unsigned char chn = event_rec[3];
 unsigned char p1 = event_rec[4];


 unsigned short w14 = *(short *) &event_rec[6];

 if ((int) dev > max_synthdev || synth_devs[dev] == ((void*)0))
  return;
 if (!(synth_open_mask & (1 << dev)))
  return;
 if (!synth_devs[dev])
  return;

 switch (cmd)
 {
  case 129:
   if (seq_mode == SEQ_2)
   {
    synth_devs[dev]->chn_info[chn].pgm_num = p1;
    if ((int) dev >= num_synths)
     synth_devs[dev]->set_instr(dev, chn, p1);
   }
   else
    synth_devs[dev]->set_instr(dev, chn, p1);

   break;

  case 130:
   if (seq_mode == SEQ_2)
   {
    if (chn > 15 || p1 > 127)
     break;

    synth_devs[dev]->chn_info[chn].controllers[p1] = w14 & 0x7f;

    if (p1 < 32)
     synth_devs[dev]->chn_info[chn].controllers[p1 + 32] = 0;

    if ((int) dev < num_synths)
    {
     int val = w14 & 0x7f;
     int i, key;

     if (p1 < 64)
     {
      val = ((synth_devs[dev]->
       chn_info[chn].controllers[p1 & ~32] & 0x7f) << 7)
       | (synth_devs[dev]->
       chn_info[chn].controllers[p1 | 32] & 0x7f);
      p1 &= ~32;
     }


     key = ((int) chn << 8);

     for (i = 0; i < synth_devs[dev]->alloc.max_voice; i++)
      if ((synth_devs[dev]->alloc.map[i] & 0xff00) == key)
       synth_devs[dev]->controller(dev, i, p1, val);
    }
    else
     synth_devs[dev]->controller(dev, chn, p1, w14);
   }
   else
    synth_devs[dev]->controller(dev, chn, p1, w14);
   break;

  case 128:
   if (seq_mode == SEQ_2)
   {
    synth_devs[dev]->chn_info[chn].bender_value = w14;

    if ((int) dev < num_synths)
    {

     int i, key;

     key = (chn << 8);

     for (i = 0; i < synth_devs[dev]->alloc.max_voice; i++)
      if ((synth_devs[dev]->alloc.map[i] & 0xff00) == key)
       synth_devs[dev]->bender(dev, i, w14);
    }
    else
     synth_devs[dev]->bender(dev, chn, w14);
   }
   else
    synth_devs[dev]->bender(dev, chn, w14);
   break;

  default:;
 }
}
