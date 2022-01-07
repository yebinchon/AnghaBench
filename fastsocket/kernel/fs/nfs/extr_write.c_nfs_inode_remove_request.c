
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_page {int wb_flags; int wb_page; TYPE_2__* wb_context; } ;
struct nfs_inode {int npages; } ;
struct inode {int i_lock; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int BUG_ON (int) ;
 int ClearPagePrivate (int ) ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_WBACK_BUSY (struct nfs_page*) ;
 int PG_MAPPED ;
 int clear_bit (int ,int *) ;
 int nfs_release_request (struct nfs_page*) ;
 int set_page_private (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs_inode_remove_request(struct nfs_page *req)
{
 struct inode *inode = req->wb_context->dentry->d_inode;
 struct nfs_inode *nfsi = NFS_I(inode);

 BUG_ON (!NFS_WBACK_BUSY(req));

 spin_lock(&inode->i_lock);
 set_page_private(req->wb_page, 0);
 ClearPagePrivate(req->wb_page);
 clear_bit(PG_MAPPED, &req->wb_flags);
 nfsi->npages--;
 spin_unlock(&inode->i_lock);
 nfs_release_request(req);
}
