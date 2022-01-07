
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t umode_t ;
struct key {int dummy; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_2__ {size_t vid; size_t vnode; size_t unique; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_server {int addr; } ;
struct afs_file_status {int dummy; } ;
struct afs_fid {int dummy; } ;
struct afs_callback {int dummy; } ;
struct afs_call {int * request; int port; int service_id; struct afs_callback* reply4; struct afs_file_status* reply3; struct afs_fid* reply2; struct afs_vnode* reply; struct key* key; } ;
typedef int __be32 ;


 int AFS_FS_PORT ;
 size_t AFS_SET_MODE ;
 int ENOMEM ;
 size_t FSCREATEFILE ;
 size_t FSMAKEDIR ;
 int FS_SERVICE ;
 int GFP_NOFS ;
 size_t S_IALLUGO ;
 scalar_t__ S_ISDIR (size_t) ;
 int _enter (char*) ;
 int afs_RXFSCreateXXXX ;
 struct afs_call* afs_alloc_flat_call (int *,size_t,int) ;
 int afs_make_call (int *,struct afs_call*,int ,struct afs_wait_mode const*) ;
 void* htonl (size_t) ;
 int htons (int ) ;
 int memcpy (int *,char const*,size_t) ;
 int memset (int *,int ,size_t) ;
 size_t strlen (char const*) ;

int afs_fs_create(struct afs_server *server,
    struct key *key,
    struct afs_vnode *vnode,
    const char *name,
    umode_t mode,
    struct afs_fid *newfid,
    struct afs_file_status *newstatus,
    struct afs_callback *newcb,
    const struct afs_wait_mode *wait_mode)
{
 struct afs_call *call;
 size_t namesz, reqsz, padsz;
 __be32 *bp;

 _enter("");

 namesz = strlen(name);
 padsz = (4 - (namesz & 3)) & 3;
 reqsz = (5 * 4) + namesz + padsz + (6 * 4);

 call = afs_alloc_flat_call(&afs_RXFSCreateXXXX, reqsz,
       (3 + 21 + 21 + 3 + 6) * 4);
 if (!call)
  return -ENOMEM;

 call->key = key;
 call->reply = vnode;
 call->reply2 = newfid;
 call->reply3 = newstatus;
 call->reply4 = newcb;
 call->service_id = FS_SERVICE;
 call->port = htons(AFS_FS_PORT);


 bp = call->request;
 *bp++ = htonl(S_ISDIR(mode) ? FSMAKEDIR : FSCREATEFILE);
 *bp++ = htonl(vnode->fid.vid);
 *bp++ = htonl(vnode->fid.vnode);
 *bp++ = htonl(vnode->fid.unique);
 *bp++ = htonl(namesz);
 memcpy(bp, name, namesz);
 bp = (void *) bp + namesz;
 if (padsz > 0) {
  memset(bp, 0, padsz);
  bp = (void *) bp + padsz;
 }
 *bp++ = htonl(AFS_SET_MODE);
 *bp++ = 0;
 *bp++ = 0;
 *bp++ = 0;
 *bp++ = htonl(mode & S_IALLUGO);
 *bp++ = 0;

 return afs_make_call(&server->addr, call, GFP_NOFS, wait_mode);
}
