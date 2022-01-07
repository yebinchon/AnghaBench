
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_local {int usage; } ;


 int CHECK_SLAB_OKAY (int *) ;
 int atomic_inc_return (int *) ;
 int printk (char*,char const*) ;

__attribute__((used)) static inline void __rxrpc_get_local(struct rxrpc_local *local, const char *f)
{
 CHECK_SLAB_OKAY(&local->usage);
 if (atomic_inc_return(&local->usage) == 1)
  printk("resurrected (%s)\n", f);
}
