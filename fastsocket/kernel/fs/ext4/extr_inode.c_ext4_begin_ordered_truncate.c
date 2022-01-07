
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
typedef int loff_t ;
struct TYPE_4__ {int jinode; } ;
struct TYPE_3__ {int s_journal; } ;


 TYPE_2__* EXT4_I (struct inode*) ;
 TYPE_1__* EXT4_SB (int ) ;
 int jbd2_journal_begin_ordered_truncate (int ,int *,int ) ;

__attribute__((used)) static inline int ext4_begin_ordered_truncate(struct inode *inode,
           loff_t new_size)
{
 return jbd2_journal_begin_ordered_truncate(
     EXT4_SB(inode->i_sb)->s_journal,
     &EXT4_I(inode)->jinode,
     new_size);
}
