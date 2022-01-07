
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vol {int dummy; } ;


 int cleanup_volume_info_contents (struct smb_vol*) ;
 int kfree (struct smb_vol*) ;

void
cifs_cleanup_volume_info(struct smb_vol *volume_info)
{
 if (!volume_info)
  return;
 cleanup_volume_info_contents(volume_info);
 kfree(volume_info);
}
