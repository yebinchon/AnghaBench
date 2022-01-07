
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ ADDR_DIFF_VEC ;
 scalar_t__ ADDR_VEC ;
 scalar_t__ CALL_INSN ;
 scalar_t__ GET_CODE (int ) ;
 int INSN_P (int ) ;
 scalar_t__ JUMP_INSN ;
 int PATTERN (int ) ;
 int SIBLING_CALL_P (int ) ;
 scalar_t__ UNSPECV_ALIGN ;
 scalar_t__ UNSPEC_VOLATILE ;
 scalar_t__ XINT (int ,int) ;
 int active_insn_p (int ) ;
 int get_attr_length (int ) ;
 int get_attr_length_address (int ) ;
 scalar_t__ symbolic_reference_mentioned_p (int ) ;

__attribute__((used)) static int
min_insn_size (rtx insn)
{
  int l = 0;

  if (!INSN_P (insn) || !active_insn_p (insn))
    return 0;


  if (GET_CODE (PATTERN (insn)) == UNSPEC_VOLATILE
      && XINT (PATTERN (insn), 1) == UNSPECV_ALIGN)
    return 0;
  if (GET_CODE (insn) == JUMP_INSN
      && (GET_CODE (PATTERN (insn)) == ADDR_VEC
   || GET_CODE (PATTERN (insn)) == ADDR_DIFF_VEC))
    return 0;



  if (GET_CODE (insn) == CALL_INSN
      && symbolic_reference_mentioned_p (PATTERN (insn))
      && !SIBLING_CALL_P (insn))
    return 5;
  if (get_attr_length (insn) <= 1)
    return 1;




  if (GET_CODE (insn) != JUMP_INSN)
    {
      l = get_attr_length_address (insn);
      if (l < 4 && symbolic_reference_mentioned_p (PATTERN (insn)))
 l = 4;
    }
  if (l)
    return 1+l;
  else
    return 2;
}
