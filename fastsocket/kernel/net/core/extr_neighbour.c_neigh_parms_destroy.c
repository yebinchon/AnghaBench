
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neigh_parms {int dummy; } ;


 int kfree (struct neigh_parms*) ;
 int neigh_parms_net (struct neigh_parms*) ;
 int release_net (int ) ;

__attribute__((used)) static void neigh_parms_destroy(struct neigh_parms *parms)
{
 release_net(neigh_parms_net(parms));
 kfree(parms);
}
