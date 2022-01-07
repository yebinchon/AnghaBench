
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {scalar_t__ audigy; } ;


 int A_FXRT1 ;
 int A_FXRT2 ;
 int FXRT ;
 int snd_emu10k1_compose_audigy_fxrt1 (unsigned char*) ;
 int snd_emu10k1_compose_audigy_fxrt2 (unsigned char*) ;
 int snd_emu10k1_compose_send_routing (unsigned char*) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int,int ) ;

__attribute__((used)) static void update_emu10k1_fxrt(struct snd_emu10k1 *emu, int voice, unsigned char *route)
{
 if (emu->audigy) {
  snd_emu10k1_ptr_write(emu, A_FXRT1, voice,
          snd_emu10k1_compose_audigy_fxrt1(route));
  snd_emu10k1_ptr_write(emu, A_FXRT2, voice,
          snd_emu10k1_compose_audigy_fxrt2(route));
 } else {
  snd_emu10k1_ptr_write(emu, FXRT, voice,
          snd_emu10k1_compose_send_routing(route));
 }
}
