
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ps3_card_info {int dummy; } ;


 int PS3_AUDIO_KICK (int ) ;
 int PS3_AUDIO_KICK_REQUEST ;
 int update_reg (int ,int ) ;
 int wmb () ;

__attribute__((used)) static void snd_ps3_kick_dma(struct snd_ps3_card_info *card)
{

 update_reg(PS3_AUDIO_KICK(0), PS3_AUDIO_KICK_REQUEST);

 wmb();
}
