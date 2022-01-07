
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct ptr_info_def {scalar_t__ name_mem_tag; } ;


 scalar_t__ NULL_TREE ;
 int SSA_NAME_IN_FREE_LIST (scalar_t__) ;
 struct ptr_info_def* SSA_NAME_PTR_INFO (scalar_t__) ;
 int dsa_named_for (scalar_t__) ;
 unsigned int num_ssa_names ;
 scalar_t__ ssa_name (unsigned int) ;

__attribute__((used)) static void
detect_strict_aliasing_named (void)
{
  unsigned int i;

  for (i = 1; i < num_ssa_names; i++)
    {
      tree ptr = ssa_name (i);
      struct ptr_info_def *pi;

      if (ptr == NULL_TREE)
 continue;

      pi = SSA_NAME_PTR_INFO (ptr);

      if (!SSA_NAME_IN_FREE_LIST (ptr) && pi && pi->name_mem_tag)
 dsa_named_for (ptr);
    }
}
