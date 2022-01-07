
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neigh_parms {int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int neigh_parms_destroy (struct neigh_parms*) ;

__attribute__((used)) static inline void neigh_parms_put(struct neigh_parms *parms)
{
 if (atomic_dec_and_test(&parms->refcnt))
  neigh_parms_destroy(parms);
}
