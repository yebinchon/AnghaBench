
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fs_struct {int lock; int users; } ;
struct TYPE_4__ {struct fs_struct* fs; } ;


 TYPE_1__* current ;
 int free_fs_struct (struct fs_struct*) ;
 struct fs_struct init_fs ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void daemonize_fs_struct(void)
{
 struct fs_struct *fs = current->fs;

 if (fs) {
  int kill;

  task_lock(current);

  write_lock(&init_fs.lock);
  init_fs.users++;
  write_unlock(&init_fs.lock);

  write_lock(&fs->lock);
  current->fs = &init_fs;
  kill = !--fs->users;
  write_unlock(&fs->lock);

  task_unlock(current);
  if (kill)
   free_fs_struct(fs);
 }
}
