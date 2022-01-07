
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1843 {int dummy; } ;


 int EINVAL ;
 int ad1843_LSS ;
 int ad1843_RSS ;
 int ad1843_write_multi (struct snd_ad1843*,int,int *,int,int *,int) ;

int ad1843_set_recsrc(struct snd_ad1843 *ad1843, int newsrc)
{
 if (newsrc < 0 || newsrc > 2)
  return -EINVAL;

 ad1843_write_multi(ad1843, 2, &ad1843_LSS, newsrc, &ad1843_RSS, newsrc);
 return newsrc;
}
