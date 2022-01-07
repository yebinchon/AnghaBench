
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef int dataflow_set ;
typedef int HOST_WIDE_INT ;


 int INT_MEM_OFFSET (int ) ;
 int MEM_EXPR (int ) ;
 int clobber_variable_part (int *,int *,int ,int ) ;
 int delete_variable_part (int *,int ,int ,int ) ;
 int var_debug_decl (int ) ;

__attribute__((used)) static void
var_mem_delete (dataflow_set *set, rtx loc, bool clobber)
{
  tree decl = MEM_EXPR (loc);
  HOST_WIDE_INT offset = INT_MEM_OFFSET (loc);

  decl = var_debug_decl (decl);
  if (clobber)
    clobber_variable_part (set, ((void*)0), decl, offset);
  delete_variable_part (set, loc, decl, offset);
}
