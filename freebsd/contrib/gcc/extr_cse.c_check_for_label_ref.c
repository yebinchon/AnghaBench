
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INSN_UID (int ) ;
 scalar_t__ LABEL_P (int ) ;
 scalar_t__ LABEL_REF ;
 int LABEL_REF_NONLOCAL_P (int ) ;
 int REG_LABEL ;
 int XEXP (int ,int ) ;
 int find_reg_note (int ,int ,int ) ;

__attribute__((used)) static int
check_for_label_ref (rtx *rtl, void *data)
{
  rtx insn = (rtx) data;





  return (GET_CODE (*rtl) == LABEL_REF
   && ! LABEL_REF_NONLOCAL_P (*rtl)
   && LABEL_P (XEXP (*rtl, 0))
   && INSN_UID (XEXP (*rtl, 0)) != 0
   && ! find_reg_note (insn, REG_LABEL, XEXP (*rtl, 0)));
}
