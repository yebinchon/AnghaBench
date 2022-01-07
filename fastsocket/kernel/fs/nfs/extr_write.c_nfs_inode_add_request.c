
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_kref; int wb_page; int wb_flags; } ;
struct nfs_inode {int npages; int change_attr; } ;
struct inode {int i_lock; } ;


 int FMODE_WRITE ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int PG_MAPPED ;
 int SetPagePrivate (int ) ;
 int kref_get (int *) ;
 scalar_t__ nfs_have_delegation (struct inode*,int ) ;
 int nfs_lock_request (struct nfs_page*) ;
 int set_bit (int ,int *) ;
 int set_page_private (int ,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs_inode_add_request(struct inode *inode, struct nfs_page *req)
{
 struct nfs_inode *nfsi = NFS_I(inode);


 nfs_lock_request(req);

 spin_lock(&inode->i_lock);
 if (!nfsi->npages && nfs_have_delegation(inode, FMODE_WRITE))
  nfsi->change_attr++;
 set_bit(PG_MAPPED, &req->wb_flags);
 SetPagePrivate(req->wb_page);
 set_page_private(req->wb_page, (unsigned long)req);
 nfsi->npages++;
 kref_get(&req->wb_kref);
 spin_unlock(&inode->i_lock);
}
