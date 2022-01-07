
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct inode {int dummy; } ;


 scalar_t__ nfs_async_handle_expired_key (struct rpc_task*) ;
 int nfs_mark_for_revalidate (struct inode*) ;

__attribute__((used)) static int nfs_proc_unlink_done(struct rpc_task *task, struct inode *dir)
{
 if (nfs_async_handle_expired_key(task))
  return 0;
 nfs_mark_for_revalidate(dir);
 return 1;
}
