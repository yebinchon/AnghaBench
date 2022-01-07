
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int private_data; } ;


 int snd_rme32_free (int ) ;

__attribute__((used)) static void snd_rme32_card_free(struct snd_card *card)
{
 snd_rme32_free(card->private_data);
}
