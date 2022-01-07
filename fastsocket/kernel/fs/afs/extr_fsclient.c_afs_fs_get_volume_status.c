
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int dummy; } ;
struct afs_wait_mode {int dummy; } ;
struct afs_volume_status {int dummy; } ;
struct TYPE_2__ {int vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_server {int addr; } ;
struct afs_call {int * request; int port; int service_id; void* reply3; struct afs_volume_status* reply2; struct afs_vnode* reply; struct key* key; } ;
typedef int __be32 ;


 int AFSOPAQUEMAX ;
 int AFS_FS_PORT ;
 int ENOMEM ;
 int FSGETVOLUMESTATUS ;
 int FS_SERVICE ;
 int GFP_KERNEL ;
 int GFP_NOFS ;
 int _enter (char*) ;
 int afs_RXFSGetVolumeStatus ;
 struct afs_call* afs_alloc_flat_call (int *,int,int) ;
 int afs_make_call (int *,struct afs_call*,int ,struct afs_wait_mode const*) ;
 int htonl (int ) ;
 int htons (int ) ;
 int kfree (void*) ;
 void* kmalloc (int ,int ) ;

int afs_fs_get_volume_status(struct afs_server *server,
        struct key *key,
        struct afs_vnode *vnode,
        struct afs_volume_status *vs,
        const struct afs_wait_mode *wait_mode)
{
 struct afs_call *call;
 __be32 *bp;
 void *tmpbuf;

 _enter("");

 tmpbuf = kmalloc(AFSOPAQUEMAX, GFP_KERNEL);
 if (!tmpbuf)
  return -ENOMEM;

 call = afs_alloc_flat_call(&afs_RXFSGetVolumeStatus, 2 * 4, 12 * 4);
 if (!call) {
  kfree(tmpbuf);
  return -ENOMEM;
 }

 call->key = key;
 call->reply = vnode;
 call->reply2 = vs;
 call->reply3 = tmpbuf;
 call->service_id = FS_SERVICE;
 call->port = htons(AFS_FS_PORT);


 bp = call->request;
 bp[0] = htonl(FSGETVOLUMESTATUS);
 bp[1] = htonl(vnode->fid.vid);

 return afs_make_call(&server->addr, call, GFP_NOFS, wait_mode);
}
