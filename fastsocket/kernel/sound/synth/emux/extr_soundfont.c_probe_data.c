
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sf_list {scalar_t__ currsf; } ;


 int EINVAL ;
 scalar_t__ find_sample (scalar_t__,int) ;

__attribute__((used)) static int
probe_data(struct snd_sf_list *sflist, int sample_id)
{

 if (sflist->currsf) {

  if (find_sample(sflist->currsf, sample_id))
   return 0;
 }
 return -EINVAL;
}
