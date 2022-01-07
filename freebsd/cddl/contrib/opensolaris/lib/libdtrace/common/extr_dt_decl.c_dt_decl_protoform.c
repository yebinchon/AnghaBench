
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dn_string; struct TYPE_4__* dn_list; } ;
typedef TYPE_1__ dt_node_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ strcmp (int *,int *) ;

__attribute__((used)) static int
dt_decl_protoform(dt_node_t *fnp, dt_node_t *flist)
{
 dt_node_t *dnp;

 for (dnp = flist; dnp != fnp && dnp != ((void*)0); dnp = dnp->dn_list) {
  if (dnp->dn_string != ((void*)0) &&
      strcmp(dnp->dn_string, fnp->dn_string) == 0)
   return (B_TRUE);
 }

 return (B_FALSE);
}
