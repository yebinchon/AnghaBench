
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int s_clustersize_bits; int s_clustersize; } ;


 unsigned int OCFS2_EXT_REFCOUNTED ;
 TYPE_1__* OCFS2_SB (int ) ;
 int mlog_errno (int) ;
 int ocfs2_get_clusters (struct inode*,int,int*,unsigned int*,unsigned int*) ;
 int ocfs2_refcount_cow (struct inode*,struct buffer_head*,int,int,int) ;

__attribute__((used)) static int ocfs2_cow_file_pos(struct inode *inode,
         struct buffer_head *fe_bh,
         u64 offset)
{
 int status;
 u32 phys, cpos = offset >> OCFS2_SB(inode->i_sb)->s_clustersize_bits;
 unsigned int num_clusters = 0;
 unsigned int ext_flags = 0;






 if ((offset & (OCFS2_SB(inode->i_sb)->s_clustersize - 1)) == 0)
  return 0;

 status = ocfs2_get_clusters(inode, cpos, &phys,
        &num_clusters, &ext_flags);
 if (status) {
  mlog_errno(status);
  goto out;
 }

 if (!(ext_flags & OCFS2_EXT_REFCOUNTED))
  goto out;

 return ocfs2_refcount_cow(inode, fe_bh, cpos, 1, cpos+1);

out:
 return status;
}
