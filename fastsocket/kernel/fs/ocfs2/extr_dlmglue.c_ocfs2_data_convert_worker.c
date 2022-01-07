
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_lock_res {int dummy; } ;
struct inode {int i_mode; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 int DLM_LOCK_EX ;
 int ML_ERROR ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int S_ISREG (int ) ;
 int UNBLOCK_CONTINUE ;
 int filemap_fdatawait (struct address_space*) ;
 scalar_t__ filemap_fdatawrite (struct address_space*) ;
 int mlog (int ,char*,unsigned long long) ;
 struct inode* ocfs2_lock_res_inode (struct ocfs2_lock_res*) ;
 int sync_mapping_buffers (struct address_space*) ;
 int truncate_inode_pages (struct address_space*,int ) ;
 int unmap_mapping_range (struct address_space*,int ,int ,int ) ;

__attribute__((used)) static int ocfs2_data_convert_worker(struct ocfs2_lock_res *lockres,
         int blocking)
{
 struct inode *inode;
 struct address_space *mapping;

        inode = ocfs2_lock_res_inode(lockres);
 mapping = inode->i_mapping;

 if (!S_ISREG(inode->i_mode))
  goto out;
 unmap_mapping_range(mapping, 0, 0, 0);

 if (filemap_fdatawrite(mapping)) {
  mlog(ML_ERROR, "Could not sync inode %llu for downconvert!",
       (unsigned long long)OCFS2_I(inode)->ip_blkno);
 }
 sync_mapping_buffers(mapping);
 if (blocking == DLM_LOCK_EX) {
  truncate_inode_pages(mapping, 0);
 } else {





  filemap_fdatawait(mapping);
 }

out:
 return UNBLOCK_CONTINUE;
}
