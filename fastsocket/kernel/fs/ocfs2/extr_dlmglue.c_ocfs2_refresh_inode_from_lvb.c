
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_meta_lvb {int lvb_ictime_packed; int lvb_imtime_packed; int lvb_iatime_packed; int lvb_inlink; int lvb_imode; int lvb_igid; int lvb_iuid; int lvb_idynfeatures; int lvb_iattr; int lvb_isize; int lvb_iclusters; } ;
struct ocfs2_lock_res {int l_lksb; } ;
struct ocfs2_inode_info {int ip_lock; void* ip_clusters; void* ip_dyn_features; void* ip_attr; struct ocfs2_lock_res ip_inode_lockres; } ;
struct inode {int i_ctime; int i_mtime; int i_atime; void* i_nlink; void* i_mode; void* i_gid; void* i_uid; scalar_t__ i_blocks; } ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 scalar_t__ S_ISLNK (void*) ;
 void* be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int i_size_write (struct inode*,int ) ;
 int mlog_entry_void () ;
 int mlog_exit_void () ;
 int mlog_meta_lvb (int ,struct ocfs2_lock_res*) ;
 struct ocfs2_meta_lvb* ocfs2_dlm_lvb (int *) ;
 scalar_t__ ocfs2_inode_sector_count (struct inode*) ;
 int ocfs2_set_inode_flags (struct inode*) ;
 int ocfs2_unpack_timespec (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ocfs2_refresh_inode_from_lvb(struct inode *inode)
{
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_lock_res *lockres = &oi->ip_inode_lockres;
 struct ocfs2_meta_lvb *lvb;

 mlog_entry_void();

 mlog_meta_lvb(0, lockres);

 lvb = ocfs2_dlm_lvb(&lockres->l_lksb);


 spin_lock(&oi->ip_lock);
 oi->ip_clusters = be32_to_cpu(lvb->lvb_iclusters);
 i_size_write(inode, be64_to_cpu(lvb->lvb_isize));

 oi->ip_attr = be32_to_cpu(lvb->lvb_iattr);
 oi->ip_dyn_features = be16_to_cpu(lvb->lvb_idynfeatures);
 ocfs2_set_inode_flags(inode);


 if (S_ISLNK(inode->i_mode) && !oi->ip_clusters)
  inode->i_blocks = 0;
 else
  inode->i_blocks = ocfs2_inode_sector_count(inode);

 inode->i_uid = be32_to_cpu(lvb->lvb_iuid);
 inode->i_gid = be32_to_cpu(lvb->lvb_igid);
 inode->i_mode = be16_to_cpu(lvb->lvb_imode);
 inode->i_nlink = be16_to_cpu(lvb->lvb_inlink);
 ocfs2_unpack_timespec(&inode->i_atime,
         be64_to_cpu(lvb->lvb_iatime_packed));
 ocfs2_unpack_timespec(&inode->i_mtime,
         be64_to_cpu(lvb->lvb_imtime_packed));
 ocfs2_unpack_timespec(&inode->i_ctime,
         be64_to_cpu(lvb->lvb_ictime_packed));
 spin_unlock(&oi->ip_lock);

 mlog_exit_void();
}
