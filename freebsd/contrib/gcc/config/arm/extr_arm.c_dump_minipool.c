
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_6__ {scalar_t__ address; } ;
struct TYPE_5__ {scalar_t__ refcount; int fix_size; struct TYPE_5__* next; int value; scalar_t__ offset; scalar_t__ max_address; scalar_t__ min_address; } ;
typedef TYPE_1__ Mnode ;


 scalar_t__ ARM_DOUBLEWORD_ALIGN ;
 int INSN_UID (int ) ;
 int arm_print_value (scalar_t__,int ) ;
 scalar_t__ dump_file ;
 int emit_barrier_after (int ) ;
 int emit_insn_after (int ,int ) ;
 int emit_label_after (int ,int ) ;
 int fprintf (scalar_t__,char*,unsigned int,unsigned long,unsigned long) ;
 int fputc (char,scalar_t__) ;
 int free (TYPE_1__*) ;
 int gcc_unreachable () ;
 int gen_align_4 () ;
 int gen_align_8 () ;
 int gen_consttable_1 (int ) ;
 int gen_consttable_2 (int ) ;
 int gen_consttable_4 (int ) ;
 int gen_consttable_8 (int ) ;
 int gen_consttable_end () ;
 int gen_label_rtx () ;
 TYPE_3__* minipool_barrier ;
 TYPE_1__* minipool_vector_head ;
 int minipool_vector_label ;
 int * minipool_vector_tail ;

__attribute__((used)) static void
dump_minipool (rtx scan)
{
  Mnode * mp;
  Mnode * nmp;
  int align64 = 0;

  if (ARM_DOUBLEWORD_ALIGN)
    for (mp = minipool_vector_head; mp != ((void*)0); mp = mp->next)
      if (mp->refcount > 0 && mp->fix_size == 8)
 {
   align64 = 1;
   break;
 }

  if (dump_file)
    fprintf (dump_file,
      ";; Emitting minipool after insn %u; address %ld; align %d (bytes)\n",
      INSN_UID (scan), (unsigned long) minipool_barrier->address, align64 ? 8 : 4);

  scan = emit_label_after (gen_label_rtx (), scan);
  scan = emit_insn_after (align64 ? gen_align_8 () : gen_align_4 (), scan);
  scan = emit_label_after (minipool_vector_label, scan);

  for (mp = minipool_vector_head; mp != ((void*)0); mp = nmp)
    {
      if (mp->refcount > 0)
 {
   if (dump_file)
     {
       fprintf (dump_file,
         ";;  Offset %u, min %ld, max %ld ",
         (unsigned) mp->offset, (unsigned long) mp->min_address,
         (unsigned long) mp->max_address);
       arm_print_value (dump_file, mp->value);
       fputc ('\n', dump_file);
     }

   switch (mp->fix_size)
     {
     default:
       gcc_unreachable ();
     }
 }

      nmp = mp->next;
      free (mp);
    }

  minipool_vector_head = minipool_vector_tail = ((void*)0);
  scan = emit_insn_after (gen_consttable_end (), scan);
  scan = emit_barrier_after (scan);
}
