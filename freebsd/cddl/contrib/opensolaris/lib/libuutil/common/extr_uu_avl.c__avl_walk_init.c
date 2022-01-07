
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int uaw_robust; int uaw_dir; struct TYPE_6__* uaw_next; struct TYPE_6__* uaw_prev; int uaw_next_result; TYPE_2__* uaw_avl; } ;
typedef TYPE_1__ uu_avl_walk_t ;
struct TYPE_7__ {TYPE_1__ ua_null_walk; scalar_t__ ua_debug; int ua_tree; } ;
typedef TYPE_2__ uu_avl_t ;
typedef int uint32_t ;


 int UU_WALK_REVERSE ;
 int UU_WALK_ROBUST ;
 int avl_first (int *) ;
 int avl_last (int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
_avl_walk_init(uu_avl_walk_t *wp, uu_avl_t *ap, uint32_t flags)
{
 uu_avl_walk_t *next, *prev;

 int robust = (flags & UU_WALK_ROBUST);
 int direction = (flags & UU_WALK_REVERSE)? -1 : 1;

 (void) memset(wp, 0, sizeof (*wp));
 wp->uaw_avl = ap;
 wp->uaw_robust = robust;
 wp->uaw_dir = direction;

 if (direction > 0)
  wp->uaw_next_result = avl_first(&ap->ua_tree);
 else
  wp->uaw_next_result = avl_last(&ap->ua_tree);

 if (ap->ua_debug || robust) {
  wp->uaw_next = next = &ap->ua_null_walk;
  wp->uaw_prev = prev = next->uaw_prev;
  next->uaw_prev = wp;
  prev->uaw_next = wp;
 }
}
