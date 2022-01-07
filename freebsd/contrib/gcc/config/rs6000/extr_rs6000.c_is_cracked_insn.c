
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum attr_type { ____Placeholder_attr_type } attr_type ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 int INSN_P (int ) ;
 int PATTERN (int ) ;
 int TYPE_COMPARE ;
 int TYPE_DELAYED_COMPARE ;
 int TYPE_DELAYED_CR ;
 int TYPE_FPLOAD_U ;
 int TYPE_FPLOAD_UX ;
 int TYPE_FPSTORE_U ;
 int TYPE_FPSTORE_UX ;
 int TYPE_IDIV ;
 int TYPE_IMUL_COMPARE ;
 int TYPE_INSERT_WORD ;
 int TYPE_LDIV ;
 int TYPE_LMUL_COMPARE ;
 int TYPE_LOAD_EXT ;
 int TYPE_LOAD_U ;
 int TYPE_STORE_U ;
 scalar_t__ USE ;
 int get_attr_type (int ) ;
 scalar_t__ rs6000_sched_groups ;

__attribute__((used)) static bool
is_cracked_insn (rtx insn)
{
  if (!insn || !INSN_P (insn)
      || GET_CODE (PATTERN (insn)) == USE
      || GET_CODE (PATTERN (insn)) == CLOBBER)
    return 0;

  if (rs6000_sched_groups)
    {
      enum attr_type type = get_attr_type (insn);
      if (type == TYPE_LOAD_U || type == TYPE_STORE_U
   || type == TYPE_FPLOAD_U || type == TYPE_FPSTORE_U
   || type == TYPE_FPLOAD_UX || type == TYPE_FPSTORE_UX
   || type == TYPE_LOAD_EXT || type == TYPE_DELAYED_CR
   || type == TYPE_COMPARE || type == TYPE_DELAYED_COMPARE
   || type == TYPE_IMUL_COMPARE || type == TYPE_LMUL_COMPARE
   || type == TYPE_IDIV || type == TYPE_LDIV
   || type == TYPE_INSERT_WORD)
 return 1;
    }

  return 0;
}
