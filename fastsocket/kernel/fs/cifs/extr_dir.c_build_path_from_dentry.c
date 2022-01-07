
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int name; } ;
struct dentry {int d_sb; struct dentry* d_parent; TYPE_1__ d_name; } ;
struct cifs_tcon {int Flags; int treeName; } ;
struct cifs_sb_info {int prepathlen; int mnt_cifs_flags; int prepath; } ;


 char CIFS_DIR_SEP (struct cifs_sb_info*) ;
 int CIFS_MOUNT_POSIX_PATHS ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int GFP_KERNEL ;
 int IS_ROOT (struct dentry*) ;
 scalar_t__ MAX_TREE_SIZE ;
 int SMB_SHARE_IS_IN_DFS ;
 int cERROR (int,char*,...) ;
 int cFYI (int ,char*,char*) ;
 struct cifs_tcon* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int strncpy (char*,int ,int) ;
 int strnlen (int ,scalar_t__) ;

char *
build_path_from_dentry(struct dentry *direntry)
{
 struct dentry *temp;
 int namelen;
 int pplen;
 int dfsplen;
 char *full_path;
 char dirsep;
 struct cifs_sb_info *cifs_sb = CIFS_SB(direntry->d_sb);
 struct cifs_tcon *tcon = cifs_sb_master_tcon(cifs_sb);

 if (direntry == ((void*)0))
  return ((void*)0);



 dirsep = CIFS_DIR_SEP(cifs_sb);
 pplen = cifs_sb->prepathlen;
 if (tcon->Flags & SMB_SHARE_IS_IN_DFS)
  dfsplen = strnlen(tcon->treeName, MAX_TREE_SIZE + 1);
 else
  dfsplen = 0;
cifs_bp_rename_retry:
 namelen = pplen + dfsplen;
 for (temp = direntry; !IS_ROOT(temp);) {
  namelen += (1 + temp->d_name.len);
  temp = temp->d_parent;
  if (temp == ((void*)0)) {
   cERROR(1, "corrupt dentry");
   return ((void*)0);
  }
 }

 full_path = kmalloc(namelen+1, GFP_KERNEL);
 if (full_path == ((void*)0))
  return full_path;
 full_path[namelen] = 0;
 for (temp = direntry; !IS_ROOT(temp);) {
  namelen -= 1 + temp->d_name.len;
  if (namelen < 0) {
   break;
  } else {
   full_path[namelen] = dirsep;
   strncpy(full_path + namelen + 1, temp->d_name.name,
    temp->d_name.len);
   cFYI(0, "name: %s", full_path + namelen);
  }
  temp = temp->d_parent;
  if (temp == ((void*)0)) {
   cERROR(1, "corrupt dentry");
   kfree(full_path);
   return ((void*)0);
  }
 }
 if (namelen != pplen + dfsplen) {
  cERROR(1, "did not end path lookup where expected namelen is %d",
   namelen);



  kfree(full_path);
  goto cifs_bp_rename_retry;
 }







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
 strncpy(full_path + dfsplen, CIFS_SB(direntry->d_sb)->prepath, pplen);
 return full_path;
}
