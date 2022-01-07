
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nilfs_segment_usage {scalar_t__ su_flags; scalar_t__ su_nblocks; int su_lastmod; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef int __u64 ;


 int KM_USER0 ;
 unsigned long NILFS_SEGMENT_USAGE_DIRTY ;
 scalar_t__ cpu_to_le32 (unsigned long) ;
 int cpu_to_le64 (int ) ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 int nilfs_mdt_mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;
 int nilfs_segment_usage_clean (struct nilfs_segment_usage*) ;
 int nilfs_segment_usage_dirty (struct nilfs_segment_usage*) ;
 struct nilfs_segment_usage* nilfs_sufile_block_get_segment_usage (struct inode*,int ,struct buffer_head*,void*) ;
 int nilfs_sufile_mod_counter (struct buffer_head*,int ,int) ;

void nilfs_sufile_do_scrap(struct inode *sufile, __u64 segnum,
      struct buffer_head *header_bh,
      struct buffer_head *su_bh)
{
 struct nilfs_segment_usage *su;
 void *kaddr;
 int clean, dirty;

 kaddr = kmap_atomic(su_bh->b_page, KM_USER0);
 su = nilfs_sufile_block_get_segment_usage(sufile, segnum, su_bh, kaddr);
 if (su->su_flags == cpu_to_le32(1UL << NILFS_SEGMENT_USAGE_DIRTY) &&
     su->su_nblocks == cpu_to_le32(0)) {
  kunmap_atomic(kaddr, KM_USER0);
  return;
 }
 clean = nilfs_segment_usage_clean(su);
 dirty = nilfs_segment_usage_dirty(su);


 su->su_lastmod = cpu_to_le64(0);
 su->su_nblocks = cpu_to_le32(0);
 su->su_flags = cpu_to_le32(1UL << NILFS_SEGMENT_USAGE_DIRTY);
 kunmap_atomic(kaddr, KM_USER0);

 nilfs_sufile_mod_counter(header_bh, clean ? (u64)-1 : 0, dirty ? 0 : 1);
 nilfs_mdt_mark_buffer_dirty(su_bh);
 nilfs_mdt_mark_dirty(sufile);
}
