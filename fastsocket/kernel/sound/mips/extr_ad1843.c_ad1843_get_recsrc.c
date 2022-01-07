
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1843 {int dummy; } ;


 int ad1843_LSS ;
 int ad1843_RSS ;
 int ad1843_read_bits (struct snd_ad1843*,int *) ;
 int ad1843_write_multi (struct snd_ad1843*,int,int *,int,int *,int) ;

int ad1843_get_recsrc(struct snd_ad1843 *ad1843)
{
 int val = ad1843_read_bits(ad1843, &ad1843_LSS);

 if (val < 0 || val > 2) {
  val = 2;
  ad1843_write_multi(ad1843, 2,
       &ad1843_LSS, val, &ad1843_RSS, val);
 }
 return val;
}
