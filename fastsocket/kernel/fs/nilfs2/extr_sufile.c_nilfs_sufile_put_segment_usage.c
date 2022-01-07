
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef int __u64 ;


 int brelse (struct buffer_head*) ;
 int kunmap (int ) ;

void nilfs_sufile_put_segment_usage(struct inode *sufile, __u64 segnum,
        struct buffer_head *bh)
{
 kunmap(bh->b_page);
 brelse(bh);
}
