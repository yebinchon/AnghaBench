
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lo_as_master; } ;
struct TYPE_4__ {TYPE_1__ ad18xx; } ;
struct snd_ac97 {TYPE_2__ spec; } ;


 int ARRAY_SIZE (int ) ;
 int patch_build_controls (struct snd_ac97*,int ,int ) ;
 int snd_ac97_ad1888_controls ;
 int snd_ac97_rename_vol_ctl (struct snd_ac97*,char*,char*) ;

__attribute__((used)) static int patch_ad1888_specific(struct snd_ac97 *ac97)
{
 if (!ac97->spec.ad18xx.lo_as_master) {

  snd_ac97_rename_vol_ctl(ac97, "Master Playback",
     "Master Surround Playback");
  snd_ac97_rename_vol_ctl(ac97, "Headphone Playback",
     "Master Playback");
 }
 return patch_build_controls(ac97, snd_ac97_ad1888_controls, ARRAY_SIZE(snd_ac97_ad1888_controls));
}
