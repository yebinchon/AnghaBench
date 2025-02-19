
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct page {scalar_t__ index; } ;
struct inode {int i_mapping; } ;
struct TYPE_10__ {TYPE_3__* file; } ;
typedef TYPE_4__ nfs_readdir_descriptor_t ;
struct TYPE_8__ {TYPE_1__* dentry; } ;
struct TYPE_9__ {TYPE_2__ f_path; } ;
struct TYPE_7__ {struct inode* d_inode; } ;


 int SetPageUptodate (struct page*) ;
 scalar_t__ invalidate_inode_pages2_range (int ,scalar_t__,int) ;
 int nfs_readdir_xdr_to_array (TYPE_4__*,struct page*,struct inode*) ;
 int nfs_zap_mapping (struct inode*,int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static
int nfs_readdir_filler(nfs_readdir_descriptor_t *desc, struct page* page)
{
 struct inode *inode = desc->file->f_path.dentry->d_inode;
 int ret;

 ret = nfs_readdir_xdr_to_array(desc, page, inode);
 if (ret < 0)
  goto error;
 SetPageUptodate(page);

 if (invalidate_inode_pages2_range(inode->i_mapping, page->index + 1, -1) < 0) {

  nfs_zap_mapping(inode, inode->i_mapping);
 }
 unlock_page(page);
 return 0;
 error:
 unlock_page(page);
 return ret;
}
