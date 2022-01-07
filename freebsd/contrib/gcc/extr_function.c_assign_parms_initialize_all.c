
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct assign_parm_data_all {int reg_parm_stack_space; int args_so_far; } ;


 int INIT_CUMULATIVE_ARGS (int ,int ,int ,int ,int) ;
 int INIT_CUMULATIVE_INCOMING_ARGS (int ,int ,int ) ;
 int NULL_RTX ;
 int REG_PARM_STACK_SPACE (int ) ;
 int TREE_TYPE (int ) ;
 int current_function_decl ;
 int memset (struct assign_parm_data_all*,int ,int) ;

__attribute__((used)) static void
assign_parms_initialize_all (struct assign_parm_data_all *all)
{
  tree fntype;

  memset (all, 0, sizeof (*all));

  fntype = TREE_TYPE (current_function_decl);




  INIT_CUMULATIVE_ARGS (all->args_so_far, fntype, NULL_RTX,
   current_function_decl, -1);





}
