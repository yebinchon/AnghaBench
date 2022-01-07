
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vol {int * iocharset; int * local_nls; int * username; scalar_t__ nullauth; } ;


 int EINVAL ;
 int ELIBACC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cERROR (int,char*,int *) ;
 int cFYI (int,char*,...) ;
 scalar_t__ cifs_parse_mount_options (char*,char const*,struct smb_vol*) ;
 int cifserror (char*) ;
 int * kzalloc (int,int ) ;
 int * load_nls (int *) ;
 int * load_nls_default () ;

__attribute__((used)) static int
cifs_setup_volume_info(struct smb_vol *volume_info, char *mount_data,
   const char *devname)
{
 int rc = 0;

 if (cifs_parse_mount_options(mount_data, devname, volume_info))
  return -EINVAL;

 if (volume_info->nullauth) {
  cFYI(1, "null user");
  volume_info->username = kzalloc(1, GFP_KERNEL);
  if (volume_info->username == ((void*)0))
   return -ENOMEM;
 } else if (volume_info->username) {

  cFYI(1, "Username: %s", volume_info->username);
 } else {
  cifserror("No username specified");


  return -EINVAL;
 }


 if (volume_info->iocharset == ((void*)0)) {

  volume_info->local_nls = load_nls_default();
 } else {
  volume_info->local_nls = load_nls(volume_info->iocharset);
  if (volume_info->local_nls == ((void*)0)) {
   cERROR(1, "CIFS mount error: iocharset %s not found",
     volume_info->iocharset);
   return -ELIBACC;
  }
 }

 return rc;
}
