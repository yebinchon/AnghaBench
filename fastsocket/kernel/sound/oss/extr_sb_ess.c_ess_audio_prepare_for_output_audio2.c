
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int channels; scalar_t__ bits; scalar_t__ trigger_bits; } ;
typedef TYPE_1__ sb_devc ;
struct TYPE_9__ {TYPE_1__* devc; } ;


 scalar_t__ AFMT_U8 ;
 int SOUND_MIXER_PCM ;
 TYPE_7__** audio_devs ;
 int ess_chgmixer (TYPE_1__*,int,int,int) ;
 int ess_getmixer (TYPE_1__*,int) ;
 int ess_mixer_reload (TYPE_1__*,int ) ;
 int ess_setmixer (TYPE_1__*,int,unsigned char) ;
 int ess_speed (TYPE_1__*,int) ;

__attribute__((used)) static int ess_audio_prepare_for_output_audio2 (int dev, int bsize, int bcount)
{
 sb_devc *devc = audio_devs[dev]->devc;
 unsigned char bits;
 ess_chgmixer (devc, 0x78, 0xd0, 0xd0);

 ess_speed(devc, 2);


 bits = ess_getmixer (devc, 0x7a) & 0x18;


 if (devc->channels != 1) bits |= 0x02;


 if (devc->bits != AFMT_U8) bits |= 0x05;


 bits |= 0x60;

 ess_setmixer (devc, 0x7a, bits);

 ess_mixer_reload (devc, SOUND_MIXER_PCM);

 devc->trigger_bits = 0;
 return 0;
}
