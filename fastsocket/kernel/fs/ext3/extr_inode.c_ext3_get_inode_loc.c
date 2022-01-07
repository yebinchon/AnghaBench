
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext3_iloc {int dummy; } ;
struct TYPE_2__ {int i_state; } ;


 TYPE_1__* EXT3_I (struct inode*) ;
 int EXT3_STATE_XATTR ;
 int __ext3_get_inode_loc (struct inode*,struct ext3_iloc*,int) ;

int ext3_get_inode_loc(struct inode *inode, struct ext3_iloc *iloc)
{

 return __ext3_get_inode_loc(inode, iloc,
  !(EXT3_I(inode)->i_state & EXT3_STATE_XATTR));
}
