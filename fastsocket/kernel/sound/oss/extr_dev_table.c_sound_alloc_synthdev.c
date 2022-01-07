
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_SYNTH_DEV ;
 int num_synths ;
 int ** synth_devs ;

int sound_alloc_synthdev(void)
{
 int i;

 for (i = 0; i < MAX_SYNTH_DEV; i++) {
  if (synth_devs[i] == ((void*)0)) {
   if (i >= num_synths)
    num_synths++;
   return i;
  }
 }
 return -1;
}
