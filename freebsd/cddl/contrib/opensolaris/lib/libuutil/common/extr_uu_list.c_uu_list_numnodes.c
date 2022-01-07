
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ul_numnodes; } ;
typedef TYPE_1__ uu_list_t ;



size_t
uu_list_numnodes(uu_list_t *lp)
{
 return (lp->ul_numnodes);
}
