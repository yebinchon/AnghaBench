
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_path; TYPE_1__* f_dentry; } ;
struct TYPE_2__ {int d_inode; } ;


 int free_pipe_info (int ) ;
 int path_put (int *) ;
 int put_filp (struct file*) ;

void free_write_pipe(struct file *f)
{
 free_pipe_info(f->f_dentry->d_inode);
 path_put(&f->f_path);
 put_filp(f);
}
