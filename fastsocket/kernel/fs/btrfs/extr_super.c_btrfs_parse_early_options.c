
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int substring_t ;
struct btrfs_fs_devices {int dummy; } ;
typedef int fmode_t ;


 int BTRFS_FS_TREE_OBJECTID ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;




 int btrfs_scan_one_device (char*,int ,void*,struct btrfs_fs_devices**) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int match_int (int *,int*) ;
 char* match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int btrfs_parse_early_options(const char *options, fmode_t flags,
  void *holder, char **subvol_name, u64 *subvol_objectid,
  u64 *subvol_rootid, struct btrfs_fs_devices **fs_devices)
{
 substring_t args[MAX_OPT_ARGS];
 char *device_name, *opts, *orig, *p;
 int error = 0;
 int intarg;

 if (!options)
  return 0;





 opts = kstrdup(options, GFP_KERNEL);
 if (!opts)
  return -ENOMEM;
 orig = opts;

 while ((p = strsep(&opts, ",")) != ((void*)0)) {
  int token;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 130:
   kfree(*subvol_name);
   *subvol_name = match_strdup(&args[0]);
   break;
  case 129:
   intarg = 0;
   error = match_int(&args[0], &intarg);
   if (!error) {

    if (!intarg)
     *subvol_objectid =
      BTRFS_FS_TREE_OBJECTID;
    else
     *subvol_objectid = intarg;
   }
   break;
  case 128:
   intarg = 0;
   error = match_int(&args[0], &intarg);
   if (!error) {

    if (!intarg)
     *subvol_rootid =
      BTRFS_FS_TREE_OBJECTID;
    else
     *subvol_rootid = intarg;
   }
   break;
  case 131:
   device_name = match_strdup(&args[0]);
   if (!device_name) {
    error = -ENOMEM;
    goto out;
   }
   error = btrfs_scan_one_device(device_name,
     flags, holder, fs_devices);
   kfree(device_name);
   if (error)
    goto out;
   break;
  default:
   break;
  }
 }

out:
 kfree(orig);
 return error;
}
