
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ ADDR_DIFF_VEC ;
 scalar_t__ ADDR_VEC ;
 scalar_t__ CALL_INSN ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int INSN_UID (scalar_t__) ;
 scalar_t__ JUMP_INSN ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ dump_file ;
 int emit_insn_before (int ,scalar_t__) ;
 int fprintf (scalar_t__,char*,int,int,...) ;
 int gcc_assert (int) ;
 int gen_align (int ) ;
 scalar_t__ get_insns () ;
 int min_insn_size (scalar_t__) ;

__attribute__((used)) static void
ix86_avoid_jump_misspredicts (void)
{
  rtx insn, start = get_insns ();
  int nbytes = 0, njumps = 0;
  int isjump = 0;
  for (insn = get_insns (); insn; insn = NEXT_INSN (insn))
    {

      nbytes += min_insn_size (insn);
      if (dump_file)
        fprintf(dump_file, "Insn %i estimated to %i bytes\n",
  INSN_UID (insn), min_insn_size (insn));
      if ((GET_CODE (insn) == JUMP_INSN
    && GET_CODE (PATTERN (insn)) != ADDR_VEC
    && GET_CODE (PATTERN (insn)) != ADDR_DIFF_VEC)
   || GET_CODE (insn) == CALL_INSN)
 njumps++;
      else
 continue;

      while (njumps > 3)
 {
   start = NEXT_INSN (start);
   if ((GET_CODE (start) == JUMP_INSN
        && GET_CODE (PATTERN (start)) != ADDR_VEC
        && GET_CODE (PATTERN (start)) != ADDR_DIFF_VEC)
       || GET_CODE (start) == CALL_INSN)
     njumps--, isjump = 1;
   else
     isjump = 0;
   nbytes -= min_insn_size (start);
 }
      gcc_assert (njumps >= 0);
      if (dump_file)
        fprintf (dump_file, "Interval %i to %i has %i bytes\n",
  INSN_UID (start), INSN_UID (insn), nbytes);

      if (njumps == 3 && isjump && nbytes < 16)
 {
   int padsize = 15 - nbytes + min_insn_size (insn);

   if (dump_file)
     fprintf (dump_file, "Padding insn %i by %i bytes!\n",
       INSN_UID (insn), padsize);
          emit_insn_before (gen_align (GEN_INT (padsize)), insn);
 }
    }
}
