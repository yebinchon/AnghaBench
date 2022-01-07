
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
typedef int loff_t ;


 int __btrfs_prealloc_file_range (struct inode*,int,int ,int ,int ,int ,int *,int *) ;

int btrfs_prealloc_file_range(struct inode *inode, int mode,
         u64 start, u64 num_bytes, u64 min_size,
         loff_t actual_len, u64 *alloc_hint)
{
 return __btrfs_prealloc_file_range(inode, mode, start, num_bytes,
        min_size, actual_len, alloc_hint,
        ((void*)0));
}
