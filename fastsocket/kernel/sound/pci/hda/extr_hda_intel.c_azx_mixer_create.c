
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx {int bus; } ;


 int snd_hda_build_controls (int ) ;

__attribute__((used)) static int azx_mixer_create(struct azx *chip)
{
 return snd_hda_build_controls(chip->bus);
}
