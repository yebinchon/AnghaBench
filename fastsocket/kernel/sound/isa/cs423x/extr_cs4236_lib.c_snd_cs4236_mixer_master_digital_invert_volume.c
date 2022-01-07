
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int snd_cs4236_mixer_master_digital_invert_volume(int vol)
{
 return (vol < 64) ? 63 - vol : 64 + (71 - vol);
}
