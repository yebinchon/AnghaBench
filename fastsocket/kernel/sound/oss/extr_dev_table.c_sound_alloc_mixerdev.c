
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int num_mixers ;
 int oss_sound_fops ;
 int register_sound_mixer (int *,int) ;

int sound_alloc_mixerdev(void)
{
 int i = register_sound_mixer(&oss_sound_fops, -1);
 if(i==-1)
  return -1;
 i>>=4;
 if(i>=num_mixers)
  num_mixers = i + 1;
 return i;
}
