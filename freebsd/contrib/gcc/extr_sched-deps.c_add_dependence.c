
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum reg_note { ____Placeholder_reg_note } reg_note ;
typedef int ds_t ;


 int DEP_ANTI ;
 int DEP_OUTPUT ;
 int DEP_TRUE ;
 int REG_DEP_ANTI ;
 int REG_DEP_OUTPUT ;
 int REG_DEP_TRUE ;
 int gcc_unreachable () ;
 int maybe_add_or_update_back_dep_1 (int ,int ,int,int ,int ,int ,int ) ;

void
add_dependence (rtx insn, rtx elem, enum reg_note dep_type)
{
  ds_t ds;

  if (dep_type == REG_DEP_TRUE)
    ds = DEP_TRUE;
  else if (dep_type == REG_DEP_OUTPUT)
    ds = DEP_OUTPUT;
  else if (dep_type == REG_DEP_ANTI)
    ds = DEP_ANTI;
  else
    gcc_unreachable ();

  maybe_add_or_update_back_dep_1 (insn, elem, dep_type, ds, 0, 0, 0);
}
