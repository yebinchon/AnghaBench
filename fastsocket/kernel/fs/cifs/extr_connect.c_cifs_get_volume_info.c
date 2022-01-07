
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vol {int dummy; } ;


 int ENOMEM ;
 struct smb_vol* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int cifs_cleanup_volume_info (struct smb_vol*) ;
 int cifs_setup_volume_info (struct smb_vol*,char*,char const*) ;
 struct smb_vol* kzalloc (int,int ) ;

struct smb_vol *
cifs_get_volume_info(char *mount_data, const char *devname)
{
 int rc;
 struct smb_vol *volume_info;

 volume_info = kzalloc(sizeof(struct smb_vol), GFP_KERNEL);
 if (!volume_info)
  return ERR_PTR(-ENOMEM);

 rc = cifs_setup_volume_info(volume_info, mount_data, devname);
 if (rc) {
  cifs_cleanup_volume_info(volume_info);
  volume_info = ERR_PTR(rc);
 }

 return volume_info;
}
