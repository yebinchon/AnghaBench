
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_azf3328 {unsigned int mixer_io; } ;


 int AZF_MUTE_BIT ;
 int snd_azf3328_io_reg_setb (unsigned long,int ,int) ;

__attribute__((used)) static bool
snd_azf3328_mixer_set_mute(const struct snd_azf3328 *chip,
      unsigned reg, bool do_mute
)
{
 unsigned long portbase = chip->mixer_io + reg + 1;
 bool updated;



 updated = snd_azf3328_io_reg_setb(portbase, AZF_MUTE_BIT, do_mute);


 return (do_mute) ? !updated : updated;
}
