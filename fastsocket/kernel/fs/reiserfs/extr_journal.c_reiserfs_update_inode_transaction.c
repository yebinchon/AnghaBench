
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_journal {int j_trans_id; int j_current_jl; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int i_trans_id; int i_jl; } ;


 TYPE_1__* REISERFS_I (struct inode*) ;
 struct reiserfs_journal* SB_JOURNAL (int ) ;

void reiserfs_update_inode_transaction(struct inode *inode)
{
 struct reiserfs_journal *journal = SB_JOURNAL(inode->i_sb);
 REISERFS_I(inode)->i_jl = journal->j_current_jl;
 REISERFS_I(inode)->i_trans_id = journal->j_trans_id;
}
