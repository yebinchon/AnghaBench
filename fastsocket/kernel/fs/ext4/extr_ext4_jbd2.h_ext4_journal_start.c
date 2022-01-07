
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
typedef int handle_t ;


 int * ext4_journal_start_sb (int ,int) ;

__attribute__((used)) static inline handle_t *ext4_journal_start(struct inode *inode, int nblocks)
{
 return ext4_journal_start_sb(inode->i_sb, nblocks);
}
