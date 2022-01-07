
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_util_memhdr {int size; int block; int block_mutex; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct snd_util_memhdr* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct snd_util_memhdr *
snd_util_memhdr_new(int memsize)
{
 struct snd_util_memhdr *hdr;

 hdr = kzalloc(sizeof(*hdr), GFP_KERNEL);
 if (hdr == ((void*)0))
  return ((void*)0);
 hdr->size = memsize;
 mutex_init(&hdr->block_mutex);
 INIT_LIST_HEAD(&hdr->block);

 return hdr;
}
