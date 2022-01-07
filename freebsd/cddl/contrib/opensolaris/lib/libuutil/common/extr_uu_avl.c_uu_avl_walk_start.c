
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uu_avl_walk_t ;
typedef int uu_avl_t ;
typedef int uint32_t ;


 int UU_ERROR_NO_MEMORY ;
 int UU_ERROR_UNKNOWN_FLAG ;
 int UU_WALK_REVERSE ;
 int UU_WALK_ROBUST ;
 int _avl_walk_init (int *,int *,int) ;
 int uu_set_error (int ) ;
 int * uu_zalloc (int) ;

uu_avl_walk_t *
uu_avl_walk_start(uu_avl_t *ap, uint32_t flags)
{
 uu_avl_walk_t *wp;

 if (flags & ~(UU_WALK_ROBUST | UU_WALK_REVERSE)) {
  uu_set_error(UU_ERROR_UNKNOWN_FLAG);
  return (((void*)0));
 }

 wp = uu_zalloc(sizeof (*wp));
 if (wp == ((void*)0)) {
  uu_set_error(UU_ERROR_NO_MEMORY);
  return (((void*)0));
 }

 _avl_walk_init(wp, ap, flags);
 return (wp);
}
