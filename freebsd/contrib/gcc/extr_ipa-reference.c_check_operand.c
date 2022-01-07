
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* ipa_reference_local_vars_info_t ;
struct TYPE_3__ {int statics_read; int statics_written; } ;


 int DECL_UID (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 int bitmap_set_bit (int ,int ) ;
 scalar_t__ has_proper_scope_for_analysis (int ) ;
 int module_statics_written ;

__attribute__((used)) static void
check_operand (ipa_reference_local_vars_info_t local,
        tree t, bool checking_write)
{
  if (!t) return;

  if ((TREE_CODE (t) == VAR_DECL || TREE_CODE (t) == FUNCTION_DECL)
      && (has_proper_scope_for_analysis (t)))
    {
      if (checking_write)
 {
   if (local)
     bitmap_set_bit (local->statics_written, DECL_UID (t));


   bitmap_set_bit (module_statics_written, DECL_UID (t));
 }
      else if (local)
 bitmap_set_bit (local->statics_read, DECL_UID (t));
    }
}
