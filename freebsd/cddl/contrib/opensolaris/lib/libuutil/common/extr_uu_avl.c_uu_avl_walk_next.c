
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uaw_avl; } ;
typedef TYPE_1__ uu_avl_walk_t ;


 void* _avl_walk_advance (TYPE_1__*,int ) ;

void *
uu_avl_walk_next(uu_avl_walk_t *wp)
{
 return (_avl_walk_advance(wp, wp->uaw_avl));
}
