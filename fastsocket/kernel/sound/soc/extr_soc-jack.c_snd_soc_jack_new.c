
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_jack {int jack; int pins; struct snd_soc_card* card; } ;
struct snd_soc_card {TYPE_1__* codec; } ;
struct TYPE_2__ {int card; } ;


 int INIT_LIST_HEAD (int *) ;
 int snd_jack_new (int ,char const*,int,int *) ;

int snd_soc_jack_new(struct snd_soc_card *card, const char *id, int type,
       struct snd_soc_jack *jack)
{
 jack->card = card;
 INIT_LIST_HEAD(&jack->pins);

 return snd_jack_new(card->codec->card, id, type, &jack->jack);
}
