
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; } ;
typedef int loff_t ;


 int i_size_write (struct inode*,int ) ;
 int truncate_pagecache (struct inode*,int ,int ) ;

void truncate_setsize(struct inode *inode, loff_t newsize)
{
 loff_t oldsize;

 oldsize = inode->i_size;
 i_size_write(inode, newsize);

 truncate_pagecache(inode, oldsize, newsize);
}
