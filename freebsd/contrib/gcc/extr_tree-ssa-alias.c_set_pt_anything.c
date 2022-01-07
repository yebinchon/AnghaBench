
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct ptr_info_def {int pt_anything; scalar_t__ name_mem_tag; int * pt_vars; } ;


 scalar_t__ NULL_TREE ;
 struct ptr_info_def* get_ptr_info (int ) ;
 int mark_sym_for_renaming (scalar_t__) ;

__attribute__((used)) static void
set_pt_anything (tree ptr)
{
  struct ptr_info_def *pi = get_ptr_info (ptr);

  pi->pt_anything = 1;
  pi->pt_vars = ((void*)0);




  if (pi->name_mem_tag)
    {
      mark_sym_for_renaming (pi->name_mem_tag);
      pi->name_mem_tag = NULL_TREE;
    }
}
