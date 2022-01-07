
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int DECL_COMDAT ;


 int DECL_EXPLICIT_INSTANTIATION (int ) ;
 int DECL_TEMPLATE_SPECIALIZATION (int ) ;
 int TARGET_WEAK_NOT_IN_ARCHIVE_TOC ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 int flag_weak ;
 int make_decl_one_only (int ) ;
 int mark_decl_referenced (int) ;

void
maybe_make_one_only (tree decl)
{






  if (! flag_weak)
    return;






  if (!TARGET_WEAK_NOT_IN_ARCHIVE_TOC
      || (! DECL_EXPLICIT_INSTANTIATION (decl)
   && ! DECL_TEMPLATE_SPECIALIZATION (decl)))
    {
      make_decl_one_only (decl);

      if (TREE_CODE (decl) == VAR_DECL)
 {
   DECL_COMDAT (decl) = 1;

   mark_decl_referenced (decl);
 }
    }
}
