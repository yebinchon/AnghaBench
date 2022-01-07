
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* rtx ;


 void* NEXT_INSN (void*) ;
 void* first_insn ;
 void* last_insn ;
 int start_sequence () ;

void
push_to_sequence (rtx first)
{
  rtx last;

  start_sequence ();

  for (last = first; last && NEXT_INSN (last); last = NEXT_INSN (last));

  first_insn = first;
  last_insn = last;
}
