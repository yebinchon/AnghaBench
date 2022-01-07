
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6addrlbl_entry {int rcu; int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int call_rcu (int *,int ) ;
 int ip6addrlbl_free_rcu ;

__attribute__((used)) static inline void ip6addrlbl_put(struct ip6addrlbl_entry *p)
{
 if (atomic_dec_and_test(&p->refcnt))
  call_rcu(&p->rcu, ip6addrlbl_free_rcu);
}
