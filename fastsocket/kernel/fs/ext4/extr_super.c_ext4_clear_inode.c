
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_4__ {int jinode; } ;
struct TYPE_3__ {int s_journal; } ;


 TYPE_2__* EXT4_I (struct inode*) ;
 scalar_t__ EXT4_JOURNAL (struct inode*) ;
 TYPE_1__* EXT4_SB (int ) ;
 int ext4_discard_preallocations (struct inode*) ;
 int jbd2_journal_release_jbd_inode (int ,int *) ;

__attribute__((used)) static void ext4_clear_inode(struct inode *inode)
{
 ext4_discard_preallocations(inode);
 if (EXT4_JOURNAL(inode))
  jbd2_journal_release_jbd_inode(EXT4_SB(inode->i_sb)->s_journal,
           &EXT4_I(inode)->jinode);
}
