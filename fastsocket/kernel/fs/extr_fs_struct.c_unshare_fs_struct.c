
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fs_struct {int lock; int users; } ;
struct TYPE_4__ {struct fs_struct* fs; } ;


 int ENOMEM ;
 struct fs_struct* copy_fs_struct (struct fs_struct*) ;
 TYPE_1__* current ;
 int free_fs_struct (struct fs_struct*) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int unshare_fs_struct(void)
{
 struct fs_struct *fs = current->fs;
 struct fs_struct *new_fs = copy_fs_struct(fs);
 int kill;

 if (!new_fs)
  return -ENOMEM;

 task_lock(current);
 write_lock(&fs->lock);
 kill = !--fs->users;
 current->fs = new_fs;
 write_unlock(&fs->lock);
 task_unlock(current);

 if (kill)
  free_fs_struct(fs);

 return 0;
}
