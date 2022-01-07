
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_io_counter {int io_count; scalar_t__ flags; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static inline void nfs_iocounter_init(struct nfs_io_counter *c)
{
 c->flags = 0;
 atomic_set(&c->io_count, 0);
}
