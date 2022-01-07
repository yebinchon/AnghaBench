
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_last_segment_lock; int ns_prot_seq; int ns_nongc_ctime; int ns_ctime; } ;
struct nilfs_sustat {int ss_prot_seq; int ss_nongc_ctime; int ss_ctime; void* ss_ndirtysegs; void* ss_ncleansegs; int ss_nsegs; } ;
struct nilfs_sufile_header {int sh_ndirtysegs; int sh_ncleansegs; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
struct TYPE_2__ {int mi_sem; struct the_nilfs* mi_nilfs; } ;


 int KM_USER0 ;
 TYPE_1__* NILFS_MDT (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int down_read (int *) ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 void* le64_to_cpu (int ) ;
 struct nilfs_sufile_header* nilfs_sufile_block_get_header (struct inode*,struct buffer_head*,void*) ;
 int nilfs_sufile_get_header_block (struct inode*,struct buffer_head**) ;
 int nilfs_sufile_get_nsegments (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_read (int *) ;

int nilfs_sufile_get_stat(struct inode *sufile, struct nilfs_sustat *sustat)
{
 struct buffer_head *header_bh;
 struct nilfs_sufile_header *header;
 struct the_nilfs *nilfs = NILFS_MDT(sufile)->mi_nilfs;
 void *kaddr;
 int ret;

 down_read(&NILFS_MDT(sufile)->mi_sem);

 ret = nilfs_sufile_get_header_block(sufile, &header_bh);
 if (ret < 0)
  goto out_sem;

 kaddr = kmap_atomic(header_bh->b_page, KM_USER0);
 header = nilfs_sufile_block_get_header(sufile, header_bh, kaddr);
 sustat->ss_nsegs = nilfs_sufile_get_nsegments(sufile);
 sustat->ss_ncleansegs = le64_to_cpu(header->sh_ncleansegs);
 sustat->ss_ndirtysegs = le64_to_cpu(header->sh_ndirtysegs);
 sustat->ss_ctime = nilfs->ns_ctime;
 sustat->ss_nongc_ctime = nilfs->ns_nongc_ctime;
 spin_lock(&nilfs->ns_last_segment_lock);
 sustat->ss_prot_seq = nilfs->ns_prot_seq;
 spin_unlock(&nilfs->ns_last_segment_lock);
 kunmap_atomic(kaddr, KM_USER0);
 brelse(header_bh);

 out_sem:
 up_read(&NILFS_MDT(sufile)->mi_sem);
 return ret;
}
