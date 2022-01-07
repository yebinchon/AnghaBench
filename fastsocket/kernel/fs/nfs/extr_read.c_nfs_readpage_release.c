
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs_page {int wb_bytes; TYPE_3__* wb_context; int wb_page; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct TYPE_5__ {struct inode* d_inode; } ;
struct TYPE_4__ {int s_id; } ;


 scalar_t__ NFS_FILEID (struct inode*) ;
 scalar_t__ PageUptodate (int ) ;
 int dprintk (char*,int ,long long,int ,long long) ;
 int nfs_readpage_to_fscache (struct inode*,int ,int ) ;
 int nfs_release_request (struct nfs_page*) ;
 scalar_t__ req_offset (struct nfs_page*) ;
 int unlock_page (int ) ;

__attribute__((used)) static void nfs_readpage_release(struct nfs_page *req)
{
 struct inode *d_inode = req->wb_context->dentry->d_inode;

 if (PageUptodate(req->wb_page))
  nfs_readpage_to_fscache(d_inode, req->wb_page, 0);

 unlock_page(req->wb_page);

 dprintk("NFS: read done (%s/%Ld %d@%Ld)\n",
   req->wb_context->dentry->d_inode->i_sb->s_id,
   (long long)NFS_FILEID(req->wb_context->dentry->d_inode),
   req->wb_bytes,
   (long long)req_offset(req));
 nfs_release_request(req);
}
