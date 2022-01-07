
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int dummy; } ;
struct iattr {int ia_valid; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_2__ {int unique; int vnode; int vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_server {int addr; } ;
struct afs_call {int * request; int operation_ID; int port; int service_id; struct afs_vnode* reply; struct key* key; } ;
typedef int __be32 ;


 int AFS_FS_PORT ;
 int ATTR_SIZE ;
 int ENOMEM ;
 int FSSTORESTATUS ;
 int FS_SERVICE ;
 int GFP_NOFS ;
 int _enter (char*,int ,int ,int ) ;
 int afs_RXFSStoreStatus ;
 struct afs_call* afs_alloc_flat_call (int *,int,int) ;
 int afs_fs_setattr_size (struct afs_server*,struct key*,struct afs_vnode*,struct iattr*,struct afs_wait_mode const*) ;
 int afs_make_call (int *,struct afs_call*,int ,struct afs_wait_mode const*) ;
 void* htonl (int ) ;
 int htons (int ) ;
 int key_serial (struct key*) ;
 int xdr_encode_AFS_StoreStatus (int **,struct iattr*) ;

int afs_fs_setattr(struct afs_server *server, struct key *key,
     struct afs_vnode *vnode, struct iattr *attr,
     const struct afs_wait_mode *wait_mode)
{
 struct afs_call *call;
 __be32 *bp;

 if (attr->ia_valid & ATTR_SIZE)
  return afs_fs_setattr_size(server, key, vnode, attr,
        wait_mode);

 _enter(",%x,{%x:%u},,",
        key_serial(key), vnode->fid.vid, vnode->fid.vnode);

 call = afs_alloc_flat_call(&afs_RXFSStoreStatus,
       (4 + 6) * 4,
       (21 + 6) * 4);
 if (!call)
  return -ENOMEM;

 call->key = key;
 call->reply = vnode;
 call->service_id = FS_SERVICE;
 call->port = htons(AFS_FS_PORT);
 call->operation_ID = FSSTORESTATUS;


 bp = call->request;
 *bp++ = htonl(FSSTORESTATUS);
 *bp++ = htonl(vnode->fid.vid);
 *bp++ = htonl(vnode->fid.vnode);
 *bp++ = htonl(vnode->fid.unique);

 xdr_encode_AFS_StoreStatus(&bp, attr);

 return afs_make_call(&server->addr, call, GFP_NOFS, wait_mode);
}
