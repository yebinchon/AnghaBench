
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * f_op; } ;


 int EBADF ;
 struct file* ERR_PTR (int ) ;
 struct file* fget_light (int,int*) ;
 int fput_light (struct file*,int) ;
 int perf_fops ;

__attribute__((used)) static struct file *perf_fget_light(int fd, int *fput_needed)
{
 struct file *file;

 file = fget_light(fd, fput_needed);
 if (!file)
  return ERR_PTR(-EBADF);

 if (file->f_op != &perf_fops) {
  fput_light(file, *fput_needed);
  *fput_needed = 0;
  return ERR_PTR(-EBADF);
 }

 return file;
}
