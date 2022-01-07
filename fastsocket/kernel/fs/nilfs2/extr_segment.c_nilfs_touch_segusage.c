
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_segment_usage {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;


 int nilfs_mdt_mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;
 int nilfs_sufile_get_segment_usage (struct inode*,int ,struct nilfs_segment_usage**,struct buffer_head**) ;
 int nilfs_sufile_put_segment_usage (struct inode*,int ,struct buffer_head*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_touch_segusage(struct inode *sufile, __u64 segnum)
{
 struct buffer_head *bh_su;
 struct nilfs_segment_usage *raw_su;
 int err;

 err = nilfs_sufile_get_segment_usage(sufile, segnum, &raw_su, &bh_su);
 if (unlikely(err))
  return err;
 nilfs_mdt_mark_buffer_dirty(bh_su);
 nilfs_mdt_mark_dirty(sufile);
 nilfs_sufile_put_segment_usage(sufile, segnum, bh_su);
 return 0;
}
