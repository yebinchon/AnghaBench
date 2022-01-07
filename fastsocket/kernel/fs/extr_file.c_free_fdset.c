
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdtable {int max_fds; int open_fds; } ;


 int BITS_PER_BYTE ;
 int PAGE_SIZE ;
 int kfree (int ) ;
 int vfree (int ) ;

__attribute__((used)) static inline void free_fdset(struct fdtable *fdt)
{
 if (fdt->max_fds <= (PAGE_SIZE * BITS_PER_BYTE / 2))
  kfree(fdt->open_fds);
 else
  vfree(fdt->open_fds);
}
