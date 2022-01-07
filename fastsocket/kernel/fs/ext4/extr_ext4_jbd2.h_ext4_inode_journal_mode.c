
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; int i_mode; } ;


 int BUG () ;
 int DATA_FLAGS ;
 int DELALLOC ;
 int EXT4_INODE_JOURNAL_DATA ;
 int EXT4_INODE_JOURNAL_DATA_MODE ;
 int EXT4_INODE_ORDER_DATA_MODE ;
 int EXT4_INODE_WRITEBACK_DATA_MODE ;
 int * EXT4_JOURNAL (struct inode*) ;
 scalar_t__ EXT4_MOUNT_JOURNAL_DATA ;
 scalar_t__ EXT4_MOUNT_ORDERED_DATA ;
 scalar_t__ EXT4_MOUNT_WRITEBACK_DATA ;
 int S_ISREG (int ) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;
 scalar_t__ test_opt (int ,int ) ;

__attribute__((used)) static inline int ext4_inode_journal_mode(struct inode *inode)
{
 if (EXT4_JOURNAL(inode) == ((void*)0))
  return EXT4_INODE_WRITEBACK_DATA_MODE;

 if ((!S_ISREG(inode->i_mode)) ||
    (test_opt(inode->i_sb, DATA_FLAGS) == EXT4_MOUNT_JOURNAL_DATA) ||
    (ext4_test_inode_flag(inode, EXT4_INODE_JOURNAL_DATA) &&
    (!test_opt(inode->i_sb, DELALLOC))))
  return EXT4_INODE_JOURNAL_DATA_MODE;
 if (test_opt(inode->i_sb, DATA_FLAGS) == EXT4_MOUNT_ORDERED_DATA)
  return EXT4_INODE_ORDER_DATA_MODE;
 if (test_opt(inode->i_sb, DATA_FLAGS) == EXT4_MOUNT_WRITEBACK_DATA)
  return EXT4_INODE_WRITEBACK_DATA_MODE;
 else
  BUG();
}
