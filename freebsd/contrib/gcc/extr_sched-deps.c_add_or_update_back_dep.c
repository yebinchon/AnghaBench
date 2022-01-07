
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum reg_note { ____Placeholder_reg_note } reg_note ;
typedef enum DEPS_ADJUST_RESULT { ____Placeholder_DEPS_ADJUST_RESULT } DEPS_ADJUST_RESULT ;
typedef int ds_t ;


 int add_or_update_back_dep_1 (int ,int ,int,int ,int ,int ,int ) ;

enum DEPS_ADJUST_RESULT
add_or_update_back_dep (rtx insn, rtx elem, enum reg_note dep_type, ds_t ds)
{
  return add_or_update_back_dep_1 (insn, elem, dep_type, ds, 0, 0, 0);
}
