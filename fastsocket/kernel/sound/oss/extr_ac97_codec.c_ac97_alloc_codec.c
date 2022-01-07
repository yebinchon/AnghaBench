
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {int list; int lock; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct ac97_codec* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct ac97_codec *ac97_alloc_codec(void)
{
 struct ac97_codec *codec = kzalloc(sizeof(struct ac97_codec), GFP_KERNEL);
 if(!codec)
  return ((void*)0);

 spin_lock_init(&codec->lock);
 INIT_LIST_HEAD(&codec->list);
 return codec;
}
