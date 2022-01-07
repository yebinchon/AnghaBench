
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fiemap_extent_info {int dummy; } ;
typedef int __u64 ;


 int btrfs_get_extent_fiemap ;
 int extent_fiemap (struct inode*,struct fiemap_extent_info*,int ,int ,int ) ;

__attribute__((used)) static int btrfs_fiemap(struct inode *inode, struct fiemap_extent_info *fieinfo,
  __u64 start, __u64 len)
{
 return extent_fiemap(inode, fieinfo, start, len, btrfs_get_extent_fiemap);
}
