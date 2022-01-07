
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef TYPE_3__* basic_block ;
struct TYPE_8__ {TYPE_1__* rtl; } ;
struct TYPE_9__ {TYPE_2__ il; } ;
struct TYPE_7__ {int global_live_at_end; int global_live_at_start; } ;
typedef int FILE ;


 scalar_t__ BB_END (TYPE_3__*) ;
 scalar_t__ BB_HEAD (TYPE_3__*) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 char* alloca (size_t) ;
 int dump_regset (int ,int *) ;
 int fprintf (int *,char*,char*) ;
 int memset (char*,char,size_t) ;
 int print_rtl_single (int *,scalar_t__) ;
 int putc (char,int *) ;

__attribute__((used)) static void
rtl_dump_bb (basic_block bb, FILE *outf, int indent)
{
  rtx insn;
  rtx last;
  char *s_indent;

  s_indent = alloca ((size_t) indent + 1);
  memset (s_indent, ' ', (size_t) indent);
  s_indent[indent] = '\0';

  fprintf (outf, ";;%s Registers live at start: ", s_indent);
  dump_regset (bb->il.rtl->global_live_at_start, outf);
  putc ('\n', outf);

  for (insn = BB_HEAD (bb), last = NEXT_INSN (BB_END (bb)); insn != last;
       insn = NEXT_INSN (insn))
    print_rtl_single (outf, insn);

  fprintf (outf, ";;%s Registers live at end: ", s_indent);
  dump_regset (bb->il.rtl->global_live_at_end, outf);
  putc ('\n', outf);
}
