
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_4__ {int alias_mayalias; int alias_noalias; int structnoaddress_resolved; int structnoaddress_queries; int tbaa_resolved; int tbaa_queries; int simple_resolved; int simple_queries; int alias_queries; } ;
struct TYPE_3__ {scalar_t__ symbol_mem_tag; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ PARM_DECL ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ SYMBOL_MEMORY_TAG ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int alias_sets_conflict_p (scalar_t__,scalar_t__) ;
 TYPE_2__ alias_stats ;
 int flag_argument_noalias ;
 int gcc_assert (int) ;
 scalar_t__ ipa_type_escape_field_does_not_clobber_p (scalar_t__,scalar_t__) ;
 scalar_t__ ipa_type_escape_star_count_of_interesting_type (scalar_t__) ;
 scalar_t__ is_global_var (scalar_t__) ;
 scalar_t__ unmodifiable_var_p (scalar_t__) ;
 TYPE_1__* var_ann (scalar_t__) ;

__attribute__((used)) static bool
may_alias_p (tree ptr, HOST_WIDE_INT mem_alias_set,
      tree var, HOST_WIDE_INT var_alias_set,
      bool alias_set_only)
{
  tree mem;

  alias_stats.alias_queries++;
  alias_stats.simple_queries++;


  mem = var_ann (ptr)->symbol_mem_tag;
  if (mem == var)
    {
      alias_stats.alias_noalias++;
      alias_stats.simple_resolved++;
      return 0;
    }



  if (flag_argument_noalias > 2 && TREE_CODE (ptr) == PARM_DECL)
    {
      alias_stats.alias_noalias++;
      alias_stats.simple_resolved++;
      return 0;
    }



  if (flag_argument_noalias > 1 && is_global_var (var)
      && TREE_CODE (ptr) == PARM_DECL)
    {
      alias_stats.alias_noalias++;
      alias_stats.simple_resolved++;
      return 0;
    }



  if ((unmodifiable_var_p (mem) && !unmodifiable_var_p (var))
      || (unmodifiable_var_p (var) && !unmodifiable_var_p (mem)))
    {
      alias_stats.alias_noalias++;
      alias_stats.simple_resolved++;
      return 0;
    }

  gcc_assert (TREE_CODE (mem) == SYMBOL_MEMORY_TAG);

  alias_stats.tbaa_queries++;


  if (!alias_sets_conflict_p (mem_alias_set, var_alias_set))
    {
      alias_stats.alias_noalias++;
      alias_stats.tbaa_resolved++;
      return 0;
    }
  if ((mem_alias_set != 0) && (var_alias_set != 0))
    {
      tree ptr_type = TREE_TYPE (ptr);
      tree var_type = TREE_TYPE (var);



      if ((!alias_set_only) &&
   ipa_type_escape_star_count_of_interesting_type (var_type) >= 0)
 {
   int ptr_star_count = 0;





   while (POINTER_TYPE_P (ptr_type))

     {
       ptr_type = TREE_TYPE (ptr_type);
       ptr_star_count++;
     }





   if (ptr_star_count > 0)
     {
       alias_stats.structnoaddress_queries++;
       if (ipa_type_escape_field_does_not_clobber_p (var_type,
           TREE_TYPE (ptr)))
  {
    alias_stats.structnoaddress_resolved++;
    alias_stats.alias_noalias++;
    return 0;
  }
     }
   else if (ptr_star_count == 0)
     {


       alias_stats.structnoaddress_queries++;
       alias_stats.structnoaddress_resolved++;
       alias_stats.alias_noalias++;
       return 0;
     }
 }
    }

  alias_stats.alias_mayalias++;
  return 1;
}
