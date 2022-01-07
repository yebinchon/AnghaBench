
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * rtx ;
struct TYPE_2__ {int decl; } ;
typedef int INSN_LOCATOR ;


 scalar_t__ BLOCK_FOR_INSN (int *) ;
 int DECL_SOURCE_LINE (int ) ;
 scalar_t__ INSN_P (int *) ;
 int * NEXT_INSN (int *) ;
 scalar_t__ NOTE_INSN_FUNCTION_BEG ;
 scalar_t__ NOTE_LINE_NUMBER (int *) ;
 scalar_t__ NOTE_P (int *) ;
 int XINT (int *,int) ;
 TYPE_1__* cfun ;
 int gcc_assert (int ) ;
 int * get_insns () ;
 int insn_line (int *) ;
 scalar_t__ optimize ;
 int prologue_locator ;
 int remove_insn (int *) ;

__attribute__((used)) static rtx
find_block_prologue_insns (void)
{
  rtx first_prologue_insn = ((void*)0);
  rtx last_prologue_insn = ((void*)0);
  rtx line_number_note = ((void*)0);
  rtx tmp_insn;
  int num_prologue_insns = 0;
  int total_insns = 0;
  int prologue_line = DECL_SOURCE_LINE (cfun->decl) - 1;
  bool other_insns_before_prologue = 0;
  bool start_of_fnbody_found = 0;







  for (tmp_insn = get_insns(); tmp_insn; tmp_insn = NEXT_INSN (tmp_insn))
    {
      if (INSN_P (tmp_insn))
 {
   if (insn_line (tmp_insn) == prologue_line)
     {
       if (!first_prologue_insn)
  first_prologue_insn = tmp_insn;
       num_prologue_insns++;
       last_prologue_insn = tmp_insn;
       INSN_LOCATOR (tmp_insn) = prologue_locator;
     }
   else if (!first_prologue_insn
     && start_of_fnbody_found)
     other_insns_before_prologue = 1;
 }
      else if (NOTE_P (tmp_insn)
        && NOTE_LINE_NUMBER (tmp_insn) == NOTE_INSN_FUNCTION_BEG)
 start_of_fnbody_found = 1;
      else if (NOTE_P (tmp_insn)
        && (XINT (tmp_insn, 5) == prologue_line))
 line_number_note = tmp_insn;
    }



  if (!first_prologue_insn)
    return ((void*)0);




  if (line_number_note)
    remove_insn (line_number_note);




  if (other_insns_before_prologue && (optimize > 0))
    return ((void*)0);





  tmp_insn = first_prologue_insn;
  while (tmp_insn != last_prologue_insn)
    {
      total_insns++;
      tmp_insn = NEXT_INSN (tmp_insn);
    }
  total_insns++;






  if ((num_prologue_insns * 2) <= total_insns)
    return ((void*)0);





  gcc_assert (first_prologue_insn != ((void*)0));
  gcc_assert (last_prologue_insn != ((void*)0));

  if (BLOCK_FOR_INSN (first_prologue_insn) !=
      BLOCK_FOR_INSN (last_prologue_insn))
    return ((void*)0);

  return last_prologue_insn;
}
