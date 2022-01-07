
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct files_struct {int file_lock; } ;
struct fdtable {unsigned long max_fds; TYPE_1__* close_on_exec; } ;
struct TYPE_2__ {unsigned long* fds_bits; } ;


 long __NFDBITS ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sys_close (unsigned long) ;

__attribute__((used)) static void flush_old_files(struct files_struct * files)
{
 long j = -1;
 struct fdtable *fdt;

 spin_lock(&files->file_lock);
 for (;;) {
  unsigned long set, i;

  j++;
  i = j * __NFDBITS;
  fdt = files_fdtable(files);
  if (i >= fdt->max_fds)
   break;
  set = fdt->close_on_exec->fds_bits[j];
  if (!set)
   continue;
  fdt->close_on_exec->fds_bits[j] = 0;
  spin_unlock(&files->file_lock);
  for ( ; set ; i++,set >>= 1) {
   if (set & 1) {
    sys_close(i);
   }
  }
  spin_lock(&files->file_lock);

 }
 spin_unlock(&files->file_lock);
}
