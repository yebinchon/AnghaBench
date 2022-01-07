
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int truncate_mutex; } ;


 TYPE_1__* EXT3_I (struct inode*) ;
 int blocks_for_truncate (struct inode*) ;
 int ext3_journal_restart (int *,int ) ;
 int jbd_debug (int,char*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int truncate_restart_transaction(handle_t *handle, struct inode *inode)
{
 int ret;

 jbd_debug(2, "restarting handle %p\n", handle);






 mutex_unlock(&EXT3_I(inode)->truncate_mutex);
 ret = ext3_journal_restart(handle, blocks_for_truncate(inode));
 mutex_lock(&EXT3_I(inode)->truncate_mutex);
 return ret;
}
