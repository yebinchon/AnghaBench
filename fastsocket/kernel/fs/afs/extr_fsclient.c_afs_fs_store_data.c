
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct afs_writeback {int key; struct afs_vnode* vnode; } ;
struct afs_wait_mode {int dummy; } ;
struct TYPE_5__ {int vid; int vnode; int unique; } ;
struct TYPE_4__ {scalar_t__ data_version; } ;
struct TYPE_6__ {int i_mapping; } ;
struct afs_vnode {TYPE_2__ fid; TYPE_1__ status; TYPE_3__ vfs_inode; } ;
struct afs_server {int addr; } ;
struct afs_call {unsigned int first_offset; unsigned int last_to; int send_pages; int * request; scalar_t__ store_version; scalar_t__ last; scalar_t__ first; int mapping; int port; int service_id; struct afs_vnode* reply; int key; struct afs_writeback* wb; } ;
typedef scalar_t__ pgoff_t ;
typedef int loff_t ;
typedef int __be32 ;


 int AFS_FS_PORT ;
 int ENOMEM ;
 int FSSTOREDATA ;
 int FS_SERVICE ;
 int GFP_NOFS ;
 int PAGE_SHIFT ;
 int _debug (char*,unsigned long long,unsigned long long,unsigned long long) ;
 int _enter (char*,int ,int,int) ;
 int afs_RXFSStoreData ;
 struct afs_call* afs_alloc_flat_call (int *,int,int) ;
 int afs_fs_store_data64 (struct afs_server*,struct afs_writeback*,scalar_t__,scalar_t__,unsigned int,unsigned int,int,int,int,struct afs_wait_mode const*) ;
 int afs_make_call (int *,struct afs_call*,int ,struct afs_wait_mode const*) ;
 void* htonl (int) ;
 int htons (int ) ;
 int i_size_read (TYPE_3__*) ;
 int key_serial (int ) ;

int afs_fs_store_data(struct afs_server *server, struct afs_writeback *wb,
        pgoff_t first, pgoff_t last,
        unsigned offset, unsigned to,
        const struct afs_wait_mode *wait_mode)
{
 struct afs_vnode *vnode = wb->vnode;
 struct afs_call *call;
 loff_t size, pos, i_size;
 __be32 *bp;

 _enter(",%x,{%x:%u},,",
        key_serial(wb->key), vnode->fid.vid, vnode->fid.vnode);

 size = to - offset;
 if (first != last)
  size += (loff_t)(last - first) << PAGE_SHIFT;
 pos = (loff_t)first << PAGE_SHIFT;
 pos += offset;

 i_size = i_size_read(&vnode->vfs_inode);
 if (pos + size > i_size)
  i_size = size + pos;

 _debug("size %llx, at %llx, i_size %llx",
        (unsigned long long) size, (unsigned long long) pos,
        (unsigned long long) i_size);

 if (pos >> 32 || i_size >> 32 || size >> 32 || (pos + size) >> 32)
  return afs_fs_store_data64(server, wb, first, last, offset, to,
        size, pos, i_size, wait_mode);

 call = afs_alloc_flat_call(&afs_RXFSStoreData,
       (4 + 6 + 3) * 4,
       (21 + 6) * 4);
 if (!call)
  return -ENOMEM;

 call->wb = wb;
 call->key = wb->key;
 call->reply = vnode;
 call->service_id = FS_SERVICE;
 call->port = htons(AFS_FS_PORT);
 call->mapping = vnode->vfs_inode.i_mapping;
 call->first = first;
 call->last = last;
 call->first_offset = offset;
 call->last_to = to;
 call->send_pages = 1;
 call->store_version = vnode->status.data_version + 1;


 bp = call->request;
 *bp++ = htonl(FSSTOREDATA);
 *bp++ = htonl(vnode->fid.vid);
 *bp++ = htonl(vnode->fid.vnode);
 *bp++ = htonl(vnode->fid.unique);

 *bp++ = 0;
 *bp++ = 0;
 *bp++ = 0;
 *bp++ = 0;
 *bp++ = 0;
 *bp++ = 0;

 *bp++ = htonl(pos);
 *bp++ = htonl(size);
 *bp++ = htonl(i_size);

 return afs_make_call(&server->addr, call, GFP_NOFS, wait_mode);
}
