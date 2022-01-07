
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card_oss {int dummy; } ;
struct snd_card {int dummy; } ;



__attribute__((used)) static inline struct snd_card_oss *card_oss(struct snd_card *card)
{
 return (struct snd_card_oss *)card;
}
