
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_mode; int i_size; int i_nlink; } ;
struct TYPE_5__ {struct super_block* j_private; } ;
typedef TYPE_1__ journal_t ;


 scalar_t__ IS_ERR (struct inode*) ;
 int KERN_ERR ;
 int S_ISREG (int ) ;
 struct inode* ext3_iget (struct super_block*,unsigned int) ;
 int ext3_init_journal_params (struct super_block*,TYPE_1__*) ;
 int ext3_msg (struct super_block*,int ,char*) ;
 int iput (struct inode*) ;
 int jbd_debug (int,char*,struct inode*,int ) ;
 TYPE_1__* journal_init_inode (struct inode*) ;
 int make_bad_inode (struct inode*) ;

__attribute__((used)) static journal_t *ext3_get_journal(struct super_block *sb,
       unsigned int journal_inum)
{
 struct inode *journal_inode;
 journal_t *journal;





 journal_inode = ext3_iget(sb, journal_inum);
 if (IS_ERR(journal_inode)) {
  ext3_msg(sb, KERN_ERR, "error: no journal found");
  return ((void*)0);
 }
 if (!journal_inode->i_nlink) {
  make_bad_inode(journal_inode);
  iput(journal_inode);
  ext3_msg(sb, KERN_ERR, "error: journal inode is deleted");
  return ((void*)0);
 }

 jbd_debug(2, "Journal inode found at %p: %Ld bytes\n",
    journal_inode, journal_inode->i_size);
 if (!S_ISREG(journal_inode->i_mode)) {
  ext3_msg(sb, KERN_ERR, "error: invalid journal inode");
  iput(journal_inode);
  return ((void*)0);
 }

 journal = journal_init_inode(journal_inode);
 if (!journal) {
  ext3_msg(sb, KERN_ERR, "error: could not load journal inode");
  iput(journal_inode);
  return ((void*)0);
 }
 journal->j_private = sb;
 ext3_init_journal_params(sb, journal);
 return journal;
}
