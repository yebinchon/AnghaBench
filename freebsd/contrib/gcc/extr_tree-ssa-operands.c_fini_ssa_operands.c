
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssa_operand_memory_d {struct ssa_operand_memory_d* next; } ;
struct TYPE_2__ {int clobbered_vars; int static_write_clobbers_avoided; int static_read_clobbers_avoided; int unescapable_clobbers_avoided; int readonly_clobbers; int static_readonly_clobbers_avoided; } ;


 int TDF_STATS ;
 int VEC_free (int ,int ,int ) ;
 int build_defs ;
 int build_uses ;
 int build_v_may_defs ;
 int build_v_must_defs ;
 int build_vuses ;
 TYPE_1__ clobber_stats ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*,int) ;
 int * free_defs ;
 int * free_maydefs ;
 int * free_mustdefs ;
 int * free_uses ;
 int * free_vuses ;
 int ggc_free (struct ssa_operand_memory_d*) ;
 int heap ;
 struct ssa_operand_memory_d* operand_memory ;
 int ops_active ;
 int tree ;

void
fini_ssa_operands (void)
{
  struct ssa_operand_memory_d *ptr;
  VEC_free (tree, heap, build_defs);
  VEC_free (tree, heap, build_uses);
  VEC_free (tree, heap, build_v_must_defs);
  VEC_free (tree, heap, build_v_may_defs);
  VEC_free (tree, heap, build_vuses);
  free_defs = ((void*)0);
  free_uses = ((void*)0);
  free_vuses = ((void*)0);
  free_maydefs = ((void*)0);
  free_mustdefs = ((void*)0);
  while ((ptr = operand_memory) != ((void*)0))
    {
      operand_memory = operand_memory->next;
      ggc_free (ptr);
    }

  ops_active = 0;

  if (dump_file && (dump_flags & TDF_STATS))
    {
      fprintf (dump_file, "Original clobbered vars:%d\n",
        clobber_stats.clobbered_vars);
      fprintf (dump_file, "Static write clobbers avoided:%d\n",
        clobber_stats.static_write_clobbers_avoided);
      fprintf (dump_file, "Static read clobbers avoided:%d\n",
        clobber_stats.static_read_clobbers_avoided);
      fprintf (dump_file, "Unescapable clobbers avoided:%d\n",
        clobber_stats.unescapable_clobbers_avoided);
      fprintf (dump_file, "Original read-only clobbers:%d\n",
        clobber_stats.readonly_clobbers);
      fprintf (dump_file, "Static read-only clobbers avoided:%d\n",
        clobber_stats.static_readonly_clobbers_avoided);
    }
}
