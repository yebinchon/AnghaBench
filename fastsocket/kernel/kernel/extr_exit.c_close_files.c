
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct files_struct {int dummy; } ;
struct file {int dummy; } ;
struct fdtable {int max_fds; int * fd; TYPE_1__* open_fds; } ;
struct TYPE_2__ {unsigned long* fds_bits; } ;


 int __NFDBITS ;
 int cond_resched () ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int filp_close (struct file*,struct files_struct*) ;
 struct file* xchg (int *,int *) ;

__attribute__((used)) static void close_files(struct files_struct * files)
{
 int i, j;
 struct fdtable *fdt;

 j = 0;






 fdt = files_fdtable(files);
 for (;;) {
  unsigned long set;
  i = j * __NFDBITS;
  if (i >= fdt->max_fds)
   break;
  set = fdt->open_fds->fds_bits[j++];
  while (set) {
   if (set & 1) {
    struct file * file = xchg(&fdt->fd[i], ((void*)0));
    if (file) {
     filp_close(file, files);
     cond_resched();
    }
   }
   i++;
   set >>= 1;
  }
 }
}
