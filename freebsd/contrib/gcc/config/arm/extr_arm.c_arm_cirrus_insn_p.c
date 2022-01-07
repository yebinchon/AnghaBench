
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum attr_cirrus { ____Placeholder_attr_cirrus } attr_cirrus ;


 int CIRRUS_NOT ;
 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INSN ;
 int PATTERN (int ) ;
 scalar_t__ USE ;
 int get_attr_cirrus (int ) ;

__attribute__((used)) static bool
arm_cirrus_insn_p (rtx insn)
{
  enum attr_cirrus attr;


  if (!insn
      || GET_CODE (insn) != INSN
      || GET_CODE (PATTERN (insn)) == USE
      || GET_CODE (PATTERN (insn)) == CLOBBER)
    return 0;

  attr = get_attr_cirrus (insn);

  return attr != CIRRUS_NOT;
}
