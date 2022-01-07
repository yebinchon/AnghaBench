
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fdtable {TYPE_1__* open_fds; } ;
typedef int fd_set_bits ;
struct TYPE_4__ {int files; } ;
struct TYPE_3__ {unsigned long* fds_bits; } ;


 unsigned long BITS (int *,unsigned long) ;
 int EBADF ;
 int __NFDBITS ;
 TYPE_2__* current ;
 struct fdtable* files_fdtable (int ) ;

__attribute__((used)) static int max_select_fd(unsigned long n, fd_set_bits *fds)
{
 unsigned long *open_fds;
 unsigned long set;
 int max;
 struct fdtable *fdt;


 set = ~(~0UL << (n & (__NFDBITS-1)));
 n /= __NFDBITS;
 fdt = files_fdtable(current->files);
 open_fds = fdt->open_fds->fds_bits+n;
 max = 0;
 if (set) {
  set &= BITS(fds, n);
  if (set) {
   if (!(set & ~*open_fds))
    goto get_max;
   return -EBADF;
  }
 }
 while (n) {
  open_fds--;
  n--;
  set = BITS(fds, n);
  if (!set)
   continue;
  if (set & ~*open_fds)
   return -EBADF;
  if (max)
   continue;
get_max:
  do {
   max++;
   set >>= 1;
  } while (set);
  max += n * __NFDBITS;
 }

 return max;
}
