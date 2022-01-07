
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {unsigned int i_size; } ;
typedef unsigned int loff_t ;
struct TYPE_2__ {unsigned int i_disksize; } ;


 TYPE_1__* EXT3_I (struct inode*) ;
 int i_size_write (struct inode*,unsigned int) ;
 int mark_inode_dirty (struct inode*) ;

__attribute__((used)) static void update_file_sizes(struct inode *inode, loff_t pos, unsigned copied)
{

 if (pos + copied > inode->i_size)
  i_size_write(inode, pos + copied);
 if (pos + copied > EXT3_I(inode)->i_disksize) {
  EXT3_I(inode)->i_disksize = pos + copied;
  mark_inode_dirty(inode);
 }
}
