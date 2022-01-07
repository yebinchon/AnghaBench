
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct inode {unsigned int i_ino; } ;
struct files_struct {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {unsigned int f_pos; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
typedef int name ;
typedef int instantiate_t ;
typedef int (* filldir_t ) (void*,char*,int,int,unsigned int,int ) ;
struct TYPE_4__ {unsigned int max_fds; } ;


 int DT_DIR ;
 int ENOENT ;
 int PROC_NUMBUF ;
 int fcheck_files (struct files_struct*,unsigned int) ;
 TYPE_2__* files_fdtable (struct files_struct*) ;
 struct files_struct* get_files_struct (struct task_struct*) ;
 struct task_struct* get_proc_task (struct inode*) ;
 unsigned int parent_ino (struct dentry*) ;
 int proc_fill_cache (struct file*,void*,int (*) (void*,char*,int,int,unsigned int,int ),char*,int,int ,struct task_struct*,unsigned int*) ;
 int put_files_struct (struct files_struct*) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static int proc_readfd_common(struct file * filp, void * dirent,
         filldir_t filldir, instantiate_t instantiate)
{
 struct dentry *dentry = filp->f_path.dentry;
 struct inode *inode = dentry->d_inode;
 struct task_struct *p = get_proc_task(inode);
 unsigned int fd, ino;
 int retval;
 struct files_struct * files;

 retval = -ENOENT;
 if (!p)
  goto out_no_task;
 retval = 0;

 fd = filp->f_pos;
 switch (fd) {
  case 0:
   if (filldir(dirent, ".", 1, 0, inode->i_ino, DT_DIR) < 0)
    goto out;
   filp->f_pos++;
  case 1:
   ino = parent_ino(dentry);
   if (filldir(dirent, "..", 2, 1, ino, DT_DIR) < 0)
    goto out;
   filp->f_pos++;
  default:
   files = get_files_struct(p);
   if (!files)
    goto out;
   rcu_read_lock();
   for (fd = filp->f_pos-2;
        fd < files_fdtable(files)->max_fds;
        fd++, filp->f_pos++) {
    char name[PROC_NUMBUF];
    int len;

    if (!fcheck_files(files, fd))
     continue;
    rcu_read_unlock();

    len = snprintf(name, sizeof(name), "%d", fd);
    if (proc_fill_cache(filp, dirent, filldir,
          name, len, instantiate,
          p, &fd) < 0) {
     rcu_read_lock();
     break;
    }
    rcu_read_lock();
   }
   rcu_read_unlock();
   put_files_struct(files);
 }
out:
 put_task_struct(p);
out_no_task:
 return retval;
}
