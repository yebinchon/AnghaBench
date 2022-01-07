
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_address {int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct unix_address*) ;

__attribute__((used)) static inline void unix_release_addr(struct unix_address *addr)
{
 if (atomic_dec_and_test(&addr->refcnt))
  kfree(addr);
}
