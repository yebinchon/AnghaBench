
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int umode_t ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_7__ {int vnode; int vid; int unique; } ;
struct TYPE_6__ {void* tv_sec; } ;
struct TYPE_8__ {TYPE_2__ i_ctime; TYPE_2__ i_atime; TYPE_2__ i_mtime; int i_mode; int i_nlink; int i_version; int i_gid; int i_uid; } ;
struct afs_vnode {int flags; TYPE_3__ fid; TYPE_4__ vfs_inode; } ;
struct TYPE_5__ {int vid; int unique; int vnode; } ;
struct afs_file_status {int size; int data_version; void* mtime_server; int mode; int nlink; int group; int owner; TYPE_1__ parent; void* mtime_client; int lock_count; int anon_access; int caller_access; int author; int type; void* if_version; } ;
typedef int afs_dataversion_t ;
typedef int __be32 ;


 int AFS_VNODE_MODIFIED ;
 int AFS_VNODE_UNSET ;
 int AFS_VNODE_ZAP_DATA ;
 int EXTRACT (int ) ;
 int S_IALLUGO ;
 int _debug (char*,...) ;
 int barrier () ;
 int i_size_write (TYPE_4__*,int) ;
 void* ntohl (int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void xdr_decode_AFSFetchStatus(const __be32 **_bp,
          struct afs_file_status *status,
          struct afs_vnode *vnode,
          afs_dataversion_t *store_version)
{
 afs_dataversion_t expected_version;
 const __be32 *bp = *_bp;
 umode_t mode;
 u64 data_version, size;
 u32 changed = 0;
 status->if_version = ntohl(*bp++);
 do { u32 x = ntohl(*bp++); changed |= status->type - x; status->type = x; } while (0);
 do { u32 x = ntohl(*bp++); changed |= status->nlink - x; status->nlink = x; } while (0);
 size = ntohl(*bp++);
 data_version = ntohl(*bp++);
 do { u32 x = ntohl(*bp++); changed |= status->author - x; status->author = x; } while (0);
 do { u32 x = ntohl(*bp++); changed |= status->owner - x; status->owner = x; } while (0);
 do { u32 x = ntohl(*bp++); changed |= status->caller_access - x; status->caller_access = x; } while (0);
 do { u32 x = ntohl(*bp++); changed |= status->anon_access - x; status->anon_access = x; } while (0);
 do { u32 x = ntohl(*bp++); changed |= status->mode - x; status->mode = x; } while (0);
 do { u32 x = ntohl(*bp++); changed |= status->parent.vnode - x; status->parent.vnode = x; } while (0);
 do { u32 x = ntohl(*bp++); changed |= status->parent.unique - x; status->parent.unique = x; } while (0);
 bp++;
 status->mtime_client = ntohl(*bp++);
 status->mtime_server = ntohl(*bp++);
 do { u32 x = ntohl(*bp++); changed |= status->group - x; status->group = x; } while (0);
 bp++;
 data_version |= (u64) ntohl(*bp++) << 32;
 do { u32 x = ntohl(*bp++); changed |= status->lock_count - x; status->lock_count = x; } while (0);
 size |= (u64) ntohl(*bp++) << 32;
 bp++;
 *_bp = bp;

 if (size != status->size) {
  status->size = size;
  changed |= 1;
 }
 status->mode &= S_IALLUGO;

 _debug("vnode time %lx, %lx",
        status->mtime_client, status->mtime_server);

 if (vnode) {
  status->parent.vid = vnode->fid.vid;
  if (changed && !test_bit(AFS_VNODE_UNSET, &vnode->flags)) {
   _debug("vnode changed");
   i_size_write(&vnode->vfs_inode, size);
   vnode->vfs_inode.i_uid = status->owner;
   vnode->vfs_inode.i_gid = status->group;
   vnode->vfs_inode.i_version = vnode->fid.unique;
   vnode->vfs_inode.i_nlink = status->nlink;

   mode = vnode->vfs_inode.i_mode;
   mode &= ~S_IALLUGO;
   mode |= status->mode;
   barrier();
   vnode->vfs_inode.i_mode = mode;
  }

  vnode->vfs_inode.i_ctime.tv_sec = status->mtime_server;
  vnode->vfs_inode.i_mtime = vnode->vfs_inode.i_ctime;
  vnode->vfs_inode.i_atime = vnode->vfs_inode.i_ctime;
 }

 expected_version = status->data_version;
 if (store_version)
  expected_version = *store_version;

 if (expected_version != data_version) {
  status->data_version = data_version;
  if (vnode && !test_bit(AFS_VNODE_UNSET, &vnode->flags)) {
   _debug("vnode modified %llx on {%x:%u}",
          (unsigned long long) data_version,
          vnode->fid.vid, vnode->fid.vnode);
   set_bit(AFS_VNODE_MODIFIED, &vnode->flags);
   set_bit(AFS_VNODE_ZAP_DATA, &vnode->flags);
  }
 } else if (store_version) {
  status->data_version = data_version;
 }
}
