
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int num_midis ;
 int oss_sound_fops ;
 int register_sound_midi (int *,int) ;

int sound_alloc_mididev(void)
{
 int i = register_sound_midi(&oss_sound_fops, -1);
 if(i==-1)
  return i;
 i>>=4;
 if(i>=num_midis)
  num_midis = i + 1;
 return i;
}
