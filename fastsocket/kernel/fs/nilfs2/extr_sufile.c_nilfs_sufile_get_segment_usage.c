
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_segment_usage {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {int mi_sem; } ;


 int EINVAL ;
 TYPE_1__* NILFS_MDT (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int down_write (int *) ;
 void* kmap (int ) ;
 int kunmap (int ) ;
 scalar_t__ nilfs_segment_usage_error (struct nilfs_segment_usage*) ;
 struct nilfs_segment_usage* nilfs_sufile_block_get_segment_usage (struct inode*,scalar_t__,struct buffer_head*,void*) ;
 scalar_t__ nilfs_sufile_get_nsegments (struct inode*) ;
 int nilfs_sufile_get_segment_usage_block (struct inode*,scalar_t__,int,struct buffer_head**) ;
 int up_write (int *) ;

int nilfs_sufile_get_segment_usage(struct inode *sufile, __u64 segnum,
       struct nilfs_segment_usage **sup,
       struct buffer_head **bhp)
{
 struct buffer_head *bh;
 struct nilfs_segment_usage *su;
 void *kaddr;
 int ret;


 if (segnum >= nilfs_sufile_get_nsegments(sufile))
  return -EINVAL;
 down_write(&NILFS_MDT(sufile)->mi_sem);
 ret = nilfs_sufile_get_segment_usage_block(sufile, segnum, 1, &bh);
 if (ret < 0)
  goto out_sem;
 kaddr = kmap(bh->b_page);
 su = nilfs_sufile_block_get_segment_usage(sufile, segnum, bh, kaddr);
 if (nilfs_segment_usage_error(su)) {
  kunmap(bh->b_page);
  brelse(bh);
  ret = -EINVAL;
  goto out_sem;
 }

 if (sup != ((void*)0))
  *sup = su;
 *bhp = bh;

 out_sem:
 up_write(&NILFS_MDT(sufile)->mi_sem);
 return ret;
}
