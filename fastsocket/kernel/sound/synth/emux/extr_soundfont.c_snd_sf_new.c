
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_util_memhdr {int dummy; } ;
struct snd_sf_callback {int dummy; } ;
struct snd_sf_list {struct snd_sf_callback callback; struct snd_util_memhdr* memhdr; int lock; int presets_mutex; } ;


 int GFP_KERNEL ;
 struct snd_sf_list* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int snd_sf_init (struct snd_sf_list*) ;
 int spin_lock_init (int *) ;

struct snd_sf_list *
snd_sf_new(struct snd_sf_callback *callback, struct snd_util_memhdr *hdr)
{
 struct snd_sf_list *sflist;

 if ((sflist = kzalloc(sizeof(*sflist), GFP_KERNEL)) == ((void*)0))
  return ((void*)0);

 mutex_init(&sflist->presets_mutex);
 spin_lock_init(&sflist->lock);
 sflist->memhdr = hdr;

 if (callback)
  sflist->callback = *callback;

 snd_sf_init(sflist);
 return sflist;
}
