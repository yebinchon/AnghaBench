
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int Flags; int treeName; } ;
struct cifs_sb_info {int prepathlen; int mnt_cifs_flags; int prepath; } ;


 int CIFS_MOUNT_POSIX_PATHS ;
 int GFP_KERNEL ;
 scalar_t__ MAX_TREE_SIZE ;
 int SMB_SHARE_IS_IN_DFS ;
 char* kmalloc (int,int ) ;
 int strncpy (char*,int ,int) ;
 int strnlen (int ,scalar_t__) ;

char *cifs_build_path_to_root(struct cifs_sb_info *cifs_sb,
    struct cifs_tcon *tcon)
{
 int pplen = cifs_sb->prepathlen;
 int dfsplen;
 char *full_path = ((void*)0);


 if (pplen == 0) {
  full_path = kmalloc(1, GFP_KERNEL);
  if (full_path)
   full_path[0] = 0;
  return full_path;
 }

 if (tcon->Flags & SMB_SHARE_IS_IN_DFS)
  dfsplen = strnlen(tcon->treeName, MAX_TREE_SIZE + 1);
 else
  dfsplen = 0;

 full_path = kmalloc(dfsplen + pplen + 1, GFP_KERNEL);
 if (full_path == ((void*)0))
  return full_path;

 if (dfsplen) {
  strncpy(full_path, tcon->treeName, dfsplen);



  if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_POSIX_PATHS) {
   int i;
   for (i = 0; i < dfsplen; i++) {
    if (full_path[i] == '\\')
     full_path[i] = '/';
   }
  }
 }
 strncpy(full_path + dfsplen, cifs_sb->prepath, pplen);
 full_path[dfsplen + pplen] = 0;
 return full_path;
}
