
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct fs_struct* fs; } ;
struct path {int dummy; } ;
struct fs_struct {int lock; struct path pwd; struct path root; } ;


 int ENOENT ;
 int path_get (struct path*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static int get_fs_path(struct task_struct *task, struct path *path, bool root)
{
 struct fs_struct *fs;
 int result = -ENOENT;

 task_lock(task);
 fs = task->fs;
 if (fs) {
  read_lock(&fs->lock);
  *path = root ? fs->root : fs->pwd;
  path_get(path);
  read_unlock(&fs->lock);
  result = 0;
 }
 task_unlock(task);
 return result;
}
