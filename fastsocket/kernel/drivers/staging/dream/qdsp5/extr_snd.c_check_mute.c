
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int SND_MUTE_MUTED ;
 int SND_MUTE_UNMUTED ;

__attribute__((used)) static inline int check_mute(int mute)
{
 return (mute == SND_MUTE_MUTED ||
  mute == SND_MUTE_UNMUTED) ? 0 : -EINVAL;
}
