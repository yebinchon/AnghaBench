
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* sample_status; } ;
typedef TYPE_1__ snd_wavefront_t ;


 int WF_MAX_SAMPLE ;
 int WF_SLOT_FILLED ;
 int snd_printk (char*) ;

__attribute__((used)) static int
wavefront_find_free_sample (snd_wavefront_t *dev)

{
 int i;

 for (i = 0; i < WF_MAX_SAMPLE; i++) {
  if (!(dev->sample_status[i] & WF_SLOT_FILLED)) {
   return i;
  }
 }
 snd_printk ("no free sample slots!\n");
 return -1;
}
