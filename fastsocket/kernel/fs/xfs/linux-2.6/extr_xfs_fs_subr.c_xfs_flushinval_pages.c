
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_off_t ;
typedef int xfs_inode_t ;
struct address_space {int dummy; } ;
struct TYPE_2__ {struct address_space* i_mapping; } ;


 int LLONG_MAX ;
 TYPE_1__* VFS_I (int *) ;
 int XFS_ITRUNCATED ;
 int filemap_write_and_wait_range (struct address_space*,int,int) ;
 int trace_xfs_pagecache_inval (int *,int,int) ;
 int truncate_inode_pages_range (struct address_space*,int,int) ;
 int xfs_iflags_clear (int *,int ) ;

int
xfs_flushinval_pages(
 xfs_inode_t *ip,
 xfs_off_t first,
 xfs_off_t last,
 int fiopt)
{
 struct address_space *mapping = VFS_I(ip)->i_mapping;
 int ret = 0;

 trace_xfs_pagecache_inval(ip, first, last);

 xfs_iflags_clear(ip, XFS_ITRUNCATED);
 ret = filemap_write_and_wait_range(mapping, first,
    last == -1 ? LLONG_MAX : last);
 if (!ret)
  truncate_inode_pages_range(mapping, first, last);
 return -ret;
}
