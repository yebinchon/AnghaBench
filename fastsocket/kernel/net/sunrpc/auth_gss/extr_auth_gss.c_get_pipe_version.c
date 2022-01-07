
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int atomic_inc (int *) ;
 int pipe_users ;
 int pipe_version ;
 int pipe_version_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int get_pipe_version(void)
{
 int ret;

 spin_lock(&pipe_version_lock);
 if (pipe_version >= 0) {
  atomic_inc(&pipe_users);
  ret = pipe_version;
 } else
  ret = -EAGAIN;
 spin_unlock(&pipe_version_lock);
 return ret;
}
