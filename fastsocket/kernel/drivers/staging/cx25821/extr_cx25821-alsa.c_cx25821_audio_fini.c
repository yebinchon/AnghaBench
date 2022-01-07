
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snd_card_free (int ) ;
 int * snd_cx25821_cards ;

__attribute__((used)) static void cx25821_audio_fini(void)
{
 snd_card_free(snd_cx25821_cards[0]);
}
