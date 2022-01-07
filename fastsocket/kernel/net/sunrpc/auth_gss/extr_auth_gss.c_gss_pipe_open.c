
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EBUSY ;
 int atomic_inc (int *) ;
 int pipe_users ;
 int pipe_version ;
 int pipe_version_lock ;
 int pipe_version_rpc_waitqueue ;
 int pipe_version_waitqueue ;
 int rpc_wake_up (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int gss_pipe_open(struct inode *inode, int new_version)
{
 int ret = 0;

 spin_lock(&pipe_version_lock);
 if (pipe_version < 0) {

  pipe_version = new_version;
  rpc_wake_up(&pipe_version_rpc_waitqueue);
  wake_up(&pipe_version_waitqueue);
 } else if (pipe_version != new_version) {

  ret = -EBUSY;
  goto out;
 }
 atomic_inc(&pipe_users);
out:
 spin_unlock(&pipe_version_lock);
 return ret;

}
