
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_6__ {int h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;


 int EAGAIN ;
 int ext4_handle_valid (TYPE_1__*) ;
 int ext4_journal_extend (TYPE_1__*,int) ;
 int ext4_truncate_restart_trans (TYPE_1__*,struct inode*,int) ;

__attribute__((used)) static int ext4_ext_truncate_extend_restart(handle_t *handle,
         struct inode *inode,
         int needed)
{
 int err;

 if (!ext4_handle_valid(handle))
  return 0;
 if (handle->h_buffer_credits > needed)
  return 0;
 err = ext4_journal_extend(handle, needed);
 if (err <= 0)
  return err;
 err = ext4_truncate_restart_trans(handle, inode, needed);
 if (err == 0)
  err = -EAGAIN;

 return err;
}
