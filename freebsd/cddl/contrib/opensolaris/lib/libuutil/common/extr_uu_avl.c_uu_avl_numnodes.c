
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ua_tree; } ;
typedef TYPE_1__ uu_avl_t ;


 size_t avl_numnodes (int *) ;

size_t
uu_avl_numnodes(uu_avl_t *ap)
{
 return (avl_numnodes(&ap->ua_tree));
}
