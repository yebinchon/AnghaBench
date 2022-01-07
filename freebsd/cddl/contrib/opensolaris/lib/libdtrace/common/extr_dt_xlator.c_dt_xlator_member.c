
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* dx_members; } ;
typedef TYPE_1__ dt_xlator_t ;
struct TYPE_6__ {int dn_membname; struct TYPE_6__* dn_list; } ;
typedef TYPE_2__ dt_node_t ;


 scalar_t__ strcmp (int ,char const*) ;

dt_node_t *
dt_xlator_member(dt_xlator_t *dxp, const char *name)
{
 dt_node_t *dnp;

 for (dnp = dxp->dx_members; dnp != ((void*)0); dnp = dnp->dn_list) {
  if (strcmp(dnp->dn_membname, name) == 0)
   return (dnp);
 }

 return (((void*)0));
}
