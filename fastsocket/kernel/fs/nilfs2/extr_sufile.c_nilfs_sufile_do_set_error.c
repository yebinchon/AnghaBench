
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_segment_usage {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef int __u64 ;


 int KM_USER0 ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 int nilfs_mdt_mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;
 int nilfs_segment_usage_clean (struct nilfs_segment_usage*) ;
 scalar_t__ nilfs_segment_usage_error (struct nilfs_segment_usage*) ;
 int nilfs_segment_usage_set_error (struct nilfs_segment_usage*) ;
 struct nilfs_segment_usage* nilfs_sufile_block_get_segment_usage (struct inode*,int ,struct buffer_head*,void*) ;
 int nilfs_sufile_mod_counter (struct buffer_head*,int,int ) ;

void nilfs_sufile_do_set_error(struct inode *sufile, __u64 segnum,
          struct buffer_head *header_bh,
          struct buffer_head *su_bh)
{
 struct nilfs_segment_usage *su;
 void *kaddr;
 int suclean;

 kaddr = kmap_atomic(su_bh->b_page, KM_USER0);
 su = nilfs_sufile_block_get_segment_usage(sufile, segnum, su_bh, kaddr);
 if (nilfs_segment_usage_error(su)) {
  kunmap_atomic(kaddr, KM_USER0);
  return;
 }
 suclean = nilfs_segment_usage_clean(su);
 nilfs_segment_usage_set_error(su);
 kunmap_atomic(kaddr, KM_USER0);

 if (suclean)
  nilfs_sufile_mod_counter(header_bh, -1, 0);
 nilfs_mdt_mark_buffer_dirty(su_bh);
 nilfs_mdt_mark_dirty(sufile);
}
