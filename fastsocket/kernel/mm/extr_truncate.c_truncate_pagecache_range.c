
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ loff_t ;


 int PAGE_SIZE ;
 scalar_t__ round_down (int ,int ) ;
 scalar_t__ round_up (scalar_t__,int ) ;
 int truncate_inode_pages_range (struct address_space*,scalar_t__,scalar_t__) ;
 int unmap_mapping_range (struct address_space*,scalar_t__,scalar_t__,int ) ;

void truncate_pagecache_range(struct inode *inode, loff_t lstart, loff_t lend)
{
 struct address_space *mapping = inode->i_mapping;
 loff_t unmap_start = round_up(lstart, PAGE_SIZE);
 loff_t unmap_end = round_down(1 + lend, PAGE_SIZE) - 1;
 if ((u64)unmap_end > (u64)unmap_start)
  unmap_mapping_range(mapping, unmap_start,
        1 + unmap_end - unmap_start, 0);
 truncate_inode_pages_range(mapping, lstart, lend);
}
