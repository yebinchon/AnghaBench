
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct nfs_server {int flags; int fsid; } ;
struct nfs_sb_mountdata {int mntflags; struct nfs_server* server; } ;


 int NFS_MOUNT_UNSHARED ;
 struct nfs_server* NFS_SB (struct super_block*) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int nfs_compare_mount_options (struct super_block*,struct nfs_server*,int) ;
 int nfs_compare_super_address (struct nfs_server*,struct nfs_server*) ;

__attribute__((used)) static int nfs_compare_super(struct super_block *sb, void *data)
{
 struct nfs_sb_mountdata *sb_mntdata = data;
 struct nfs_server *server = sb_mntdata->server, *old = NFS_SB(sb);
 int mntflags = sb_mntdata->mntflags;

 if (!nfs_compare_super_address(old, server))
  return 0;

 if (old->flags & NFS_MOUNT_UNSHARED)
  return 0;
 if (memcmp(&old->fsid, &server->fsid, sizeof(old->fsid)) != 0)
  return 0;
 return nfs_compare_mount_options(sb, server, mntflags);
}
