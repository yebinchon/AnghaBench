
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int dummy; } ;


 int neigh_release (struct neighbour*) ;

__attribute__((used)) static __inline__ void
teql_neigh_release(struct neighbour *n)
{
 if (n)
  neigh_release(n);
}
