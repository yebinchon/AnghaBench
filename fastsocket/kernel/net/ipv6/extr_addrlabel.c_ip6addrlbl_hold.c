
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6addrlbl_entry {int refcnt; } ;


 int atomic_inc_not_zero (int *) ;

__attribute__((used)) static inline int ip6addrlbl_hold(struct ip6addrlbl_entry *p)
{
 return atomic_inc_not_zero(&p->refcnt);
}
