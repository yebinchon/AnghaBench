
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_card {TYPE_1__* private_data; } ;
struct TYPE_2__ {int card; } ;
typedef TYPE_1__ snd_cx25821_card_t ;


 int snd_card_free (int ) ;

__attribute__((used)) static void snd_cx25821_dev_free(struct snd_card *card)
{
 snd_cx25821_card_t *chip = card->private_data;


 snd_card_free(chip->card);
}
