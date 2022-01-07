
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_mapping; } ;
struct TYPE_2__ {int * a_ops; } ;


 int ext3_journalled_aops ;
 int ext3_ordered_aops ;
 scalar_t__ ext3_should_order_data (struct inode*) ;
 scalar_t__ ext3_should_writeback_data (struct inode*) ;
 int ext3_writeback_aops ;

void ext3_set_aops(struct inode *inode)
{
 if (ext3_should_order_data(inode))
  inode->i_mapping->a_ops = &ext3_ordered_aops;
 else if (ext3_should_writeback_data(inode))
  inode->i_mapping->a_ops = &ext3_writeback_aops;
 else
  inode->i_mapping->a_ops = &ext3_journalled_aops;
}
