
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int volume_l; int volume_r; int bass; int treble; int synth; } ;
struct TYPE_10__ {TYPE_1__ mixer; } ;
typedef TYPE_2__ pss_confdata ;


 scalar_t__ pss_mixer ;
 int pss_write (TYPE_2__*,int) ;
 int set_bass (TYPE_2__*,int) ;
 int set_master_volume (TYPE_2__*,int,int) ;
 int set_synth_volume (TYPE_2__*,int) ;
 int set_treble (TYPE_2__*,int) ;

__attribute__((used)) static void pss_mixer_reset(pss_confdata *devc)
{
 set_master_volume(devc, 33, 33);
 set_bass(devc, 50);
 set_treble(devc, 50);
 set_synth_volume(devc, 30);
 pss_write (devc, 0x0010);
 pss_write (devc, 0x0800 | 0xce);

 if(pss_mixer)
 {
  devc->mixer.volume_l = devc->mixer.volume_r = 33;
  devc->mixer.bass = 50;
  devc->mixer.treble = 50;
  devc->mixer.synth = 30;
 }
}
