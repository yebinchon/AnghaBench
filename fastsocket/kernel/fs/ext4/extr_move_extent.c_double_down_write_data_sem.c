
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_ino; } ;
struct TYPE_2__ {int i_data_sem; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int SINGLE_DEPTH_NESTING ;
 int down_write (int *) ;
 int down_write_nested (int *,int ) ;

__attribute__((used)) static void
double_down_write_data_sem(struct inode *orig_inode, struct inode *donor_inode)
{
 struct inode *first = orig_inode, *second = donor_inode;






 if (donor_inode->i_ino < orig_inode->i_ino) {
  first = donor_inode;
  second = orig_inode;
 }

 down_write(&EXT4_I(first)->i_data_sem);
 down_write_nested(&EXT4_I(second)->i_data_sem, SINGLE_DEPTH_NESTING);
}
