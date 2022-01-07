
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int etree_type ;


 int ASSERT (int) ;
 int * overlay_max ;
 int * overlay_subalign ;
 int * overlay_vma ;

void
lang_enter_overlay (etree_type *vma_expr, etree_type *subalign)
{

  ASSERT (overlay_vma == ((void*)0)
   && overlay_subalign == ((void*)0)
   && overlay_max == ((void*)0));

  overlay_vma = vma_expr;
  overlay_subalign = subalign;
}
