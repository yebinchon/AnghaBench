
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct key {int dummy; } ;
struct iattr {int ia_valid; int ia_size; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_4__ {int vid; int vnode; int unique; } ;
struct TYPE_3__ {scalar_t__ data_version; } ;
struct afs_vnode {TYPE_2__ fid; TYPE_1__ status; } ;
struct afs_server {int addr; } ;
struct afs_call {int operation_ID; int * request; scalar_t__ store_version; int port; int service_id; struct afs_vnode* reply; struct key* key; } ;
typedef int __be32 ;


 int AFS_FS_PORT ;
 int ASSERT (int) ;
 int ATTR_SIZE ;
 int ENOMEM ;
 int FSSTOREDATA ;
 int FS_SERVICE ;
 int GFP_NOFS ;
 int _enter (char*,int ,int,int) ;
 int afs_RXFSStoreData_as_Status ;
 struct afs_call* afs_alloc_flat_call (int *,int,int) ;
 int afs_fs_setattr_size64 (struct afs_server*,struct key*,struct afs_vnode*,struct iattr*,struct afs_wait_mode const*) ;
 int afs_make_call (int *,struct afs_call*,int ,struct afs_wait_mode const*) ;
 void* htonl (int) ;
 int htons (int ) ;
 int key_serial (struct key*) ;
 int xdr_encode_AFS_StoreStatus (int **,struct iattr*) ;

__attribute__((used)) static int afs_fs_setattr_size(struct afs_server *server, struct key *key,
          struct afs_vnode *vnode, struct iattr *attr,
          const struct afs_wait_mode *wait_mode)
{
 struct afs_call *call;
 __be32 *bp;

 _enter(",%x,{%x:%u},,",
        key_serial(key), vnode->fid.vid, vnode->fid.vnode);

 ASSERT(attr->ia_valid & ATTR_SIZE);
 if (attr->ia_size >> 32)
  return afs_fs_setattr_size64(server, key, vnode, attr,
          wait_mode);

 call = afs_alloc_flat_call(&afs_RXFSStoreData_as_Status,
       (4 + 6 + 3) * 4,
       (21 + 6) * 4);
 if (!call)
  return -ENOMEM;

 call->key = key;
 call->reply = vnode;
 call->service_id = FS_SERVICE;
 call->port = htons(AFS_FS_PORT);
 call->store_version = vnode->status.data_version + 1;
 call->operation_ID = FSSTOREDATA;


 bp = call->request;
 *bp++ = htonl(FSSTOREDATA);
 *bp++ = htonl(vnode->fid.vid);
 *bp++ = htonl(vnode->fid.vnode);
 *bp++ = htonl(vnode->fid.unique);

 xdr_encode_AFS_StoreStatus(&bp, attr);

 *bp++ = 0;
 *bp++ = 0;
 *bp++ = htonl(attr->ia_size);

 return afs_make_call(&server->addr, call, GFP_NOFS, wait_mode);
}
