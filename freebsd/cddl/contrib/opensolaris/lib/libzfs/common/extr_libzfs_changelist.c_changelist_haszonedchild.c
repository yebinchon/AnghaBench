
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cl_haszonedchild; } ;
typedef TYPE_1__ prop_changelist_t ;



int
changelist_haszonedchild(prop_changelist_t *clp)
{
 return (clp->cl_haszonedchild);
}
