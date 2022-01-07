
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key {int dummy; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_2__ {size_t vid; size_t vnode; size_t unique; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_server {int addr; } ;
struct afs_call {int * request; int port; int service_id; struct afs_vnode* reply2; struct afs_vnode* reply; struct key* key; } ;
typedef int __be32 ;


 int AFS_FS_PORT ;
 int ENOMEM ;
 size_t FSLINK ;
 int FS_SERVICE ;
 int GFP_NOFS ;
 int _enter (char*) ;
 int afs_RXFSLink ;
 struct afs_call* afs_alloc_flat_call (int *,size_t,int) ;
 int afs_make_call (int *,struct afs_call*,int ,struct afs_wait_mode const*) ;
 void* htonl (size_t) ;
 int htons (int ) ;
 int memcpy (int *,char const*,size_t) ;
 int memset (int *,int ,size_t) ;
 size_t strlen (char const*) ;

int afs_fs_link(struct afs_server *server,
  struct key *key,
  struct afs_vnode *dvnode,
  struct afs_vnode *vnode,
  const char *name,
  const struct afs_wait_mode *wait_mode)
{
 struct afs_call *call;
 size_t namesz, reqsz, padsz;
 __be32 *bp;

 _enter("");

 namesz = strlen(name);
 padsz = (4 - (namesz & 3)) & 3;
 reqsz = (5 * 4) + namesz + padsz + (3 * 4);

 call = afs_alloc_flat_call(&afs_RXFSLink, reqsz, (21 + 21 + 6) * 4);
 if (!call)
  return -ENOMEM;

 call->key = key;
 call->reply = dvnode;
 call->reply2 = vnode;
 call->service_id = FS_SERVICE;
 call->port = htons(AFS_FS_PORT);


 bp = call->request;
 *bp++ = htonl(FSLINK);
 *bp++ = htonl(dvnode->fid.vid);
 *bp++ = htonl(dvnode->fid.vnode);
 *bp++ = htonl(dvnode->fid.unique);
 *bp++ = htonl(namesz);
 memcpy(bp, name, namesz);
 bp = (void *) bp + namesz;
 if (padsz > 0) {
  memset(bp, 0, padsz);
  bp = (void *) bp + padsz;
 }
 *bp++ = htonl(vnode->fid.vid);
 *bp++ = htonl(vnode->fid.vnode);
 *bp++ = htonl(vnode->fid.unique);

 return afs_make_call(&server->addr, call, GFP_NOFS, wait_mode);
}
