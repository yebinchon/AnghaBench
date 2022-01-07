
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int num_audiodevs ;
 int oss_sound_fops ;
 int register_sound_dsp (int *,int) ;

__attribute__((used)) static int sound_alloc_audiodev(void)
{
 int i = register_sound_dsp(&oss_sound_fops, -1);
 if(i==-1)
  return i;
 i>>=4;
 if(i>=num_audiodevs)
  num_audiodevs = i + 1;
 return i;
}
