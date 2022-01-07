
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int snd_cs4235_mixer_output_accu_set_volume(int vol)
{
 switch (vol & 3) {
 case 0: return 3 << 5;
 case 1: return 0 << 5;
 case 2: return 2 << 5;
 case 3: return 1 << 5;
 }
 return 1 << 5;
}
