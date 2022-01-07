
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_io_counter {int io_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void
nfs_iocounter_inc(struct nfs_io_counter *c)
{
 atomic_inc(&c->io_count);
}
