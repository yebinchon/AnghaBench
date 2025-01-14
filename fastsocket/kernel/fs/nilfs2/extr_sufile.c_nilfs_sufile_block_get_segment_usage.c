
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void nilfs_segment_usage ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;
struct TYPE_2__ {int mi_entry_size; } ;


 TYPE_1__* NILFS_MDT (struct inode const*) ;
 int bh_offset (struct buffer_head*) ;
 int nilfs_sufile_get_offset (struct inode const*,int ) ;

__attribute__((used)) static struct nilfs_segment_usage *
nilfs_sufile_block_get_segment_usage(const struct inode *sufile, __u64 segnum,
         struct buffer_head *bh, void *kaddr)
{
 return kaddr + bh_offset(bh) +
  nilfs_sufile_get_offset(sufile, segnum) *
  NILFS_MDT(sufile)->mi_entry_size;
}
