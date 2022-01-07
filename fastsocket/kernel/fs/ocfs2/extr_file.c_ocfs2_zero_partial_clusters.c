
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct ocfs2_super {unsigned int s_clustersize; } ;
struct inode {int i_sb; } ;
typedef int handle_t ;


 scalar_t__ IS_ERR (int *) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int mlog (int ,char*,unsigned long long,unsigned long long) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_zero_range_for_truncate (struct inode*,int *,unsigned int,unsigned int) ;

__attribute__((used)) static int ocfs2_zero_partial_clusters(struct inode *inode,
           u64 start, u64 len)
{
 int ret = 0;
 u64 tmpend, end = start + len;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 unsigned int csize = osb->s_clustersize;
 handle_t *handle;
 mlog(0, "byte start: %llu, end: %llu\n",
      (unsigned long long)start, (unsigned long long)end);






 if ((start & (csize - 1)) == 0 && (end & (csize - 1)) == 0)
  goto out;

 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }




 tmpend = (u64)osb->s_clustersize + (start & ~(osb->s_clustersize - 1));
 if (tmpend > end)
  tmpend = end;

 mlog(0, "1st range: start: %llu, tmpend: %llu\n",
      (unsigned long long)start, (unsigned long long)tmpend);

 ret = ocfs2_zero_range_for_truncate(inode, handle, start, tmpend);
 if (ret)
  mlog_errno(ret);

 if (tmpend < end) {





  start = end & ~(osb->s_clustersize - 1);

  mlog(0, "2nd range: start: %llu, end: %llu\n",
       (unsigned long long)start, (unsigned long long)end);

  ret = ocfs2_zero_range_for_truncate(inode, handle, start, end);
  if (ret)
   mlog_errno(ret);
 }

 ocfs2_commit_trans(osb, handle);
out:
 return ret;
}
