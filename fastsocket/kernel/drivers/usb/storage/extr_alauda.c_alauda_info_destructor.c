
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alauda_media_info {int pba_to_lba; int lba_to_pba; } ;
struct alauda_info {struct alauda_media_info* port; } ;


 int alauda_free_maps (struct alauda_media_info*) ;
 int kfree (int ) ;

__attribute__((used)) static void alauda_info_destructor(void *extra)
{
 struct alauda_info *info = (struct alauda_info *) extra;
 int port;

 if (!info)
  return;

 for (port = 0; port < 2; port++) {
  struct alauda_media_info *media_info = &info->port[port];

  alauda_free_maps(media_info);
  kfree(media_info->lba_to_pba);
  kfree(media_info->pba_to_lba);
 }
}
