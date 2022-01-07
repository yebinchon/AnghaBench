
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int pipe_users ;
 int pipe_version ;
 int pipe_version_lock ;
 int spin_unlock (int *) ;

__attribute__((used)) static void put_pipe_version(void)
{
 if (atomic_dec_and_lock(&pipe_users, &pipe_version_lock)) {
  pipe_version = -1;
  spin_unlock(&pipe_version_lock);
 }
}
