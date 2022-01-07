
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_io_counter {int io_count; } ;


 int __nfs_iocounter_wait (struct nfs_io_counter*) ;
 scalar_t__ atomic_read (int *) ;

int
nfs_iocounter_wait(struct nfs_io_counter *c)
{
 if (atomic_read(&c->io_count) == 0)
  return 0;
 return __nfs_iocounter_wait(c);
}
