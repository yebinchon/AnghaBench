
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm256 {int dummy; } ;


 int NM_AUDIO_MUTE_LEFT ;
 int NM_AUDIO_MUTE_REG ;
 int NM_AUDIO_MUTE_RIGHT ;
 int NM_PLAYBACK_ENABLE_REG ;
 int snd_nm256_writeb (struct nm256*,int ,int ) ;
 int snd_nm256_writew (struct nm256*,int ,int) ;

__attribute__((used)) static void
snd_nm256_playback_stop(struct nm256 *chip)
{

 snd_nm256_writew(chip, NM_AUDIO_MUTE_REG,
    NM_AUDIO_MUTE_LEFT | NM_AUDIO_MUTE_RIGHT);

 snd_nm256_writeb(chip, NM_PLAYBACK_ENABLE_REG, 0);
}
