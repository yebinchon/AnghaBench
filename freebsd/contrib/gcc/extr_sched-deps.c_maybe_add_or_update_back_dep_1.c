
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum reg_note { ____Placeholder_reg_note } reg_note ;
typedef enum DEPS_ADJUST_RESULT { ____Placeholder_DEPS_ADJUST_RESULT } DEPS_ADJUST_RESULT ;
typedef int ds_t ;
struct TYPE_2__ {int flags; } ;
typedef int HAS_INTERNAL_DEP ;


 int DO_SPECULATION ;
 scalar_t__ INSN_P (scalar_t__) ;
 int add_or_update_back_dep_1 (scalar_t__,scalar_t__,int,int ,scalar_t__,scalar_t__,scalar_t__**) ;
 TYPE_1__* current_sched_info ;
 int gcc_assert (int) ;

__attribute__((used)) static enum DEPS_ADJUST_RESULT
maybe_add_or_update_back_dep_1 (rtx insn, rtx elem, enum reg_note dep_type,
    ds_t ds, rtx mem1, rtx mem2,
    rtx **changed_linkpp)
{
  gcc_assert (INSN_P (insn) && INSN_P (elem));


  if (insn == elem)
    {





      return 0;
    }

  return add_or_update_back_dep_1 (insn, elem, dep_type,
       ds, mem1, mem2, changed_linkpp);
}
