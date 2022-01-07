
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_1__* basic_block ;
struct TYPE_5__ {int index; } ;


 scalar_t__ BB_END (TYPE_1__*) ;
 scalar_t__ BB_HEAD (TYPE_1__*) ;
 int LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NOTE_INSN_BASIC_BLOCK ;
 scalar_t__ NOTE_LINE_NUMBER (scalar_t__) ;
 int NOTE_P (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ dump_file ;
 scalar_t__ emit_insn_after_noloc (scalar_t__,scalar_t__) ;
 int fprintf (scalar_t__,char*,...) ;
 int print_inline_rtx (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void
insert_insn_start_bb (rtx insn, basic_block bb)
{

  rtx prev = PREV_INSN (BB_HEAD (bb));
  rtx before = BB_HEAD (bb);
  while (before != 0)
    {
      if (! LABEL_P (before)
   && (! NOTE_P (before)
       || NOTE_LINE_NUMBER (before) != NOTE_INSN_BASIC_BLOCK))
 break;
      prev = before;
      if (prev == BB_END (bb))
 break;
      before = NEXT_INSN (before);
    }

  insn = emit_insn_after_noloc (insn, prev);

  if (dump_file)
    {
      fprintf (dump_file, "STORE_MOTION  insert store at start of BB %d:\n",
        bb->index);
      print_inline_rtx (dump_file, insn, 6);
      fprintf (dump_file, "\n");
    }
}
