
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EEXIST ;
 size_t EINVAL ;
 struct snd_card* dev_get_drvdata (struct device*) ;
 int isalnum (int) ;
 int memcpy (char*,char const*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_card_mutex ;
 struct snd_card** snd_cards ;
 size_t snd_ecards_limit ;
 int snd_info_card_id_change (struct snd_card*) ;
 int snd_info_check_reserved_words (char*) ;
 int strcmp (int ,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static ssize_t
card_id_store_attr(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct snd_card *card = dev_get_drvdata(dev);
 char buf1[sizeof(card->id)];
 size_t copy = count > sizeof(card->id) - 1 ?
     sizeof(card->id) - 1 : count;
 size_t idx;
 int c;

 for (idx = 0; idx < copy; idx++) {
  c = buf[idx];
  if (!isalnum(c) && c != '_' && c != '-')
   return -EINVAL;
 }
 memcpy(buf1, buf, copy);
 buf1[copy] = '\0';
 mutex_lock(&snd_card_mutex);
 if (!snd_info_check_reserved_words(buf1)) {
      __exist:
  mutex_unlock(&snd_card_mutex);
  return -EEXIST;
 }
 for (idx = 0; idx < snd_ecards_limit; idx++) {
  if (snd_cards[idx] && !strcmp(snd_cards[idx]->id, buf1)) {
   if (card == snd_cards[idx])
    goto __ok;
   else
    goto __exist;
  }
 }
 strcpy(card->id, buf1);
 snd_info_card_id_change(card);
__ok:
 mutex_unlock(&snd_card_mutex);

 return count;
}
