
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_sufile_header {int sh_last_alloc; int sh_ndirtysegs; int sh_ncleansegs; } ;
struct nilfs_segment_usage {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef int __u64 ;
struct TYPE_2__ {size_t mi_entry_size; int mi_sem; } ;


 int ENOSPC ;
 int KM_USER0 ;
 TYPE_1__* NILFS_MDT (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le64 (int) ;
 int down_write (int *) ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 int le64_add_cpu (int *,int) ;
 void* le64_to_cpu (int ) ;
 int nilfs_mdt_mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;
 int nilfs_segment_usage_clean (struct nilfs_segment_usage*) ;
 int nilfs_segment_usage_set_dirty (struct nilfs_segment_usage*) ;
 struct nilfs_sufile_header* nilfs_sufile_block_get_header (struct inode*,struct buffer_head*,void*) ;
 struct nilfs_segment_usage* nilfs_sufile_block_get_segment_usage (struct inode*,int,struct buffer_head*,void*) ;
 int nilfs_sufile_get_header_block (struct inode*,struct buffer_head**) ;
 unsigned long nilfs_sufile_get_nsegments (struct inode*) ;
 int nilfs_sufile_get_segment_usage_block (struct inode*,int,int,struct buffer_head**) ;
 unsigned long nilfs_sufile_segment_usages_in_block (struct inode*,int,int) ;
 int up_write (int *) ;

int nilfs_sufile_alloc(struct inode *sufile, __u64 *segnump)
{
 struct buffer_head *header_bh, *su_bh;
 struct nilfs_sufile_header *header;
 struct nilfs_segment_usage *su;
 size_t susz = NILFS_MDT(sufile)->mi_entry_size;
 __u64 segnum, maxsegnum, last_alloc;
 void *kaddr;
 unsigned long nsegments, ncleansegs, nsus;
 int ret, i, j;

 down_write(&NILFS_MDT(sufile)->mi_sem);

 ret = nilfs_sufile_get_header_block(sufile, &header_bh);
 if (ret < 0)
  goto out_sem;
 kaddr = kmap_atomic(header_bh->b_page, KM_USER0);
 header = nilfs_sufile_block_get_header(sufile, header_bh, kaddr);
 ncleansegs = le64_to_cpu(header->sh_ncleansegs);
 last_alloc = le64_to_cpu(header->sh_last_alloc);
 kunmap_atomic(kaddr, KM_USER0);

 nsegments = nilfs_sufile_get_nsegments(sufile);
 segnum = last_alloc + 1;
 maxsegnum = nsegments - 1;
 for (i = 0; i < nsegments; i += nsus) {
  if (segnum >= nsegments) {

   segnum = 0;
   maxsegnum = last_alloc;
  }
  ret = nilfs_sufile_get_segment_usage_block(sufile, segnum, 1,
          &su_bh);
  if (ret < 0)
   goto out_header;
  kaddr = kmap_atomic(su_bh->b_page, KM_USER0);
  su = nilfs_sufile_block_get_segment_usage(
   sufile, segnum, su_bh, kaddr);

  nsus = nilfs_sufile_segment_usages_in_block(
   sufile, segnum, maxsegnum);
  for (j = 0; j < nsus; j++, su = (void *)su + susz, segnum++) {
   if (!nilfs_segment_usage_clean(su))
    continue;

   nilfs_segment_usage_set_dirty(su);
   kunmap_atomic(kaddr, KM_USER0);

   kaddr = kmap_atomic(header_bh->b_page, KM_USER0);
   header = nilfs_sufile_block_get_header(
    sufile, header_bh, kaddr);
   le64_add_cpu(&header->sh_ncleansegs, -1);
   le64_add_cpu(&header->sh_ndirtysegs, 1);
   header->sh_last_alloc = cpu_to_le64(segnum);
   kunmap_atomic(kaddr, KM_USER0);

   nilfs_mdt_mark_buffer_dirty(header_bh);
   nilfs_mdt_mark_buffer_dirty(su_bh);
   nilfs_mdt_mark_dirty(sufile);
   brelse(su_bh);
   *segnump = segnum;
   goto out_header;
  }

  kunmap_atomic(kaddr, KM_USER0);
  brelse(su_bh);
 }


 ret = -ENOSPC;

 out_header:
 brelse(header_bh);

 out_sem:
 up_write(&NILFS_MDT(sufile)->mi_sem);
 return ret;
}
