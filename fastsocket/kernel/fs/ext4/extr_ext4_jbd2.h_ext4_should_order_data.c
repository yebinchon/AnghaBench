
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EXT4_INODE_ORDER_DATA_MODE ;
 int ext4_inode_journal_mode (struct inode*) ;

__attribute__((used)) static inline int ext4_should_order_data(struct inode *inode)
{
 return ext4_inode_journal_mode(inode) & EXT4_INODE_ORDER_DATA_MODE;
}
