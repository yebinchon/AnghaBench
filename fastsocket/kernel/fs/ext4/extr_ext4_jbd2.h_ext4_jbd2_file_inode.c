
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int jinode; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 scalar_t__ ext4_handle_valid (int *) ;
 int jbd2_journal_file_inode (int *,int *) ;

__attribute__((used)) static inline int ext4_jbd2_file_inode(handle_t *handle, struct inode *inode)
{
 if (ext4_handle_valid(handle))
  return jbd2_journal_file_inode(handle, &EXT4_I(inode)->jinode);
 return 0;
}
