
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int dummy; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_2__ {int unique; int vnode; int vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_server {int addr; } ;
struct afs_call {int * request; int port; int service_id; struct afs_vnode* reply; struct key* key; } ;
typedef int __be32 ;


 int AFS_FS_PORT ;
 int ENOMEM ;
 int FSRELEASELOCK ;
 int FS_SERVICE ;
 int GFP_NOFS ;
 int _enter (char*) ;
 int afs_RXFSReleaseLock ;
 struct afs_call* afs_alloc_flat_call (int *,int,int) ;
 int afs_make_call (int *,struct afs_call*,int ,struct afs_wait_mode const*) ;
 void* htonl (int ) ;
 int htons (int ) ;

int afs_fs_release_lock(struct afs_server *server,
   struct key *key,
   struct afs_vnode *vnode,
   const struct afs_wait_mode *wait_mode)
{
 struct afs_call *call;
 __be32 *bp;

 _enter("");

 call = afs_alloc_flat_call(&afs_RXFSReleaseLock, 4 * 4, 6 * 4);
 if (!call)
  return -ENOMEM;

 call->key = key;
 call->reply = vnode;
 call->service_id = FS_SERVICE;
 call->port = htons(AFS_FS_PORT);


 bp = call->request;
 *bp++ = htonl(FSRELEASELOCK);
 *bp++ = htonl(vnode->fid.vid);
 *bp++ = htonl(vnode->fid.vnode);
 *bp++ = htonl(vnode->fid.unique);

 return afs_make_call(&server->addr, call, GFP_NOFS, wait_mode);
}
