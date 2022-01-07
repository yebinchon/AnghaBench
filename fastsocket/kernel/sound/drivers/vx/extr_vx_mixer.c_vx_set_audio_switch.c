
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int* audio_active; } ;
struct vx_audio_level {int has_mute; int mute; } ;
typedef int info ;


 int memset (struct vx_audio_level*,int ,int) ;
 int vx_adjust_audio_level (struct vx_core*,int,int ,struct vx_audio_level*) ;

__attribute__((used)) static int vx_set_audio_switch(struct vx_core *chip, int audio, int active)
{
 struct vx_audio_level info;

 memset(&info, 0, sizeof(info));
 info.has_mute = 1;
 info.mute = !active;
 chip->audio_active[audio] = active;
 return vx_adjust_audio_level(chip, audio, 0, &info);
}
