
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
 size_t FSRENAME ;
 int FS_SERVICE ;
 int GFP_NOFS ;
 int _enter (char*) ;
 int afs_RXFSRename ;
 struct afs_call* afs_alloc_flat_call (int *,size_t,int) ;
 int afs_make_call (int *,struct afs_call*,int ,struct afs_wait_mode const*) ;
 void* htonl (size_t) ;
 int htons (int ) ;
 int memcpy (int *,char const*,size_t) ;
 int memset (int *,int ,size_t) ;
 size_t strlen (char const*) ;

int afs_fs_rename(struct afs_server *server,
    struct key *key,
    struct afs_vnode *orig_dvnode,
    const char *orig_name,
    struct afs_vnode *new_dvnode,
    const char *new_name,
    const struct afs_wait_mode *wait_mode)
{
 struct afs_call *call;
 size_t reqsz, o_namesz, o_padsz, n_namesz, n_padsz;
 __be32 *bp;

 _enter("");

 o_namesz = strlen(orig_name);
 o_padsz = (4 - (o_namesz & 3)) & 3;

 n_namesz = strlen(new_name);
 n_padsz = (4 - (n_namesz & 3)) & 3;

 reqsz = (4 * 4) +
  4 + o_namesz + o_padsz +
  (3 * 4) +
  4 + n_namesz + n_padsz;

 call = afs_alloc_flat_call(&afs_RXFSRename, reqsz, (21 + 21 + 6) * 4);
 if (!call)
  return -ENOMEM;

 call->key = key;
 call->reply = orig_dvnode;
 call->reply2 = new_dvnode;
 call->service_id = FS_SERVICE;
 call->port = htons(AFS_FS_PORT);


 bp = call->request;
 *bp++ = htonl(FSRENAME);
 *bp++ = htonl(orig_dvnode->fid.vid);
 *bp++ = htonl(orig_dvnode->fid.vnode);
 *bp++ = htonl(orig_dvnode->fid.unique);
 *bp++ = htonl(o_namesz);
 memcpy(bp, orig_name, o_namesz);
 bp = (void *) bp + o_namesz;
 if (o_padsz > 0) {
  memset(bp, 0, o_padsz);
  bp = (void *) bp + o_padsz;
 }

 *bp++ = htonl(new_dvnode->fid.vid);
 *bp++ = htonl(new_dvnode->fid.vnode);
 *bp++ = htonl(new_dvnode->fid.unique);
 *bp++ = htonl(n_namesz);
 memcpy(bp, new_name, n_namesz);
 bp = (void *) bp + n_namesz;
 if (n_padsz > 0) {
  memset(bp, 0, n_padsz);
  bp = (void *) bp + n_padsz;
 }

 return afs_make_call(&server->addr, call, GFP_NOFS, wait_mode);
}
