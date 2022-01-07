
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 size_t INSN_UID (int ) ;
 int SPEC_GEN_CHECK_MUTATION_OFFSET ;
 int SPEC_GEN_S ;
 int SPEC_N ;
 int gcc_assert (int) ;
 int* spec_check_no ;

__attribute__((used)) static bool
ia64_needs_block_p (rtx insn)
{
  int check_no;

  check_no = spec_check_no[INSN_UID(insn)] - 1;
  gcc_assert (0 <= check_no && check_no < SPEC_GEN_CHECK_MUTATION_OFFSET);

  return ((SPEC_GEN_S <= check_no && check_no < SPEC_GEN_S + SPEC_N)
   || (4 * SPEC_N <= check_no && check_no < 4 * SPEC_N + SPEC_N));
}
