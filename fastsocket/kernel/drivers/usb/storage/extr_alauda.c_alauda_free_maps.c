
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alauda_media_info {unsigned int zoneshift; unsigned int blockshift; unsigned int pageshift; unsigned int capacity; int ** pba_to_lba; int ** lba_to_pba; } ;


 int kfree (int *) ;

__attribute__((used)) static void alauda_free_maps (struct alauda_media_info *media_info)
{
 unsigned int shift = media_info->zoneshift
  + media_info->blockshift + media_info->pageshift;
 unsigned int num_zones = media_info->capacity >> shift;
 unsigned int i;

 if (media_info->lba_to_pba != ((void*)0))
  for (i = 0; i < num_zones; i++) {
   kfree(media_info->lba_to_pba[i]);
   media_info->lba_to_pba[i] = ((void*)0);
  }

 if (media_info->pba_to_lba != ((void*)0))
  for (i = 0; i < num_zones; i++) {
   kfree(media_info->pba_to_lba[i]);
   media_info->pba_to_lba[i] = ((void*)0);
  }
}
