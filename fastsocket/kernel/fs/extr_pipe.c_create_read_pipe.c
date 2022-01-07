
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_flags; int f_path; } ;


 int ENFILE ;
 struct file* ERR_PTR (int ) ;
 int FMODE_READ ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 struct file* alloc_file (int *,int ,int *) ;
 int path_get (int *) ;
 int read_pipefifo_fops ;

struct file *create_read_pipe(struct file *wrf, int flags)
{

 struct file *f = alloc_file(&wrf->f_path, FMODE_READ,
        &read_pipefifo_fops);
 if (!f)
  return ERR_PTR(-ENFILE);

 path_get(&wrf->f_path);
 f->f_flags = O_RDONLY | (flags & O_NONBLOCK);

 return f;
}
