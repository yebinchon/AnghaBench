
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {struct file** fi_fds; } ;
struct file {int dummy; } ;


 size_t O_RDONLY ;
 size_t O_RDWR ;

__attribute__((used)) static inline struct file *find_readable_file(struct nfs4_file *f)
{
 if (f->fi_fds[O_RDONLY])
  return f->fi_fds[O_RDONLY];
 return f->fi_fds[O_RDWR];
}
