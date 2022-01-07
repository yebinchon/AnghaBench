
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct fdtable {int max_fds; int fd; } ;


 int PAGE_SIZE ;
 int kfree (int ) ;
 int vfree (int ) ;

__attribute__((used)) static inline void free_fdarr(struct fdtable *fdt)
{
 if (fdt->max_fds <= (PAGE_SIZE / sizeof(struct file *)))
  kfree(fdt->fd);
 else
  vfree(fdt->fd);
}
