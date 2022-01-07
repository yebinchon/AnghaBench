
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int private_data; int (* sample_reset ) (int ) ;} ;
struct snd_sf_list {TYPE_1__ callback; } ;


 int lock_preset (struct snd_sf_list*) ;
 int snd_sf_clear (struct snd_sf_list*) ;
 int stub1 (int ) ;
 int unlock_preset (struct snd_sf_list*) ;

int
snd_soundfont_remove_samples(struct snd_sf_list *sflist)
{
 lock_preset(sflist);
 if (sflist->callback.sample_reset)
  sflist->callback.sample_reset(sflist->callback.private_data);
 snd_sf_clear(sflist);
 unlock_preset(sflist);

 return 0;
}
