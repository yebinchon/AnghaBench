
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct see_ref_s {int insn; } ;
typedef void* rtx ;


 scalar_t__ INSN_DELETED_P (void*) ;
 int add_insn_before (void*,int ) ;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*) ;
 int print_rtl_single (scalar_t__,void*) ;

__attribute__((used)) static int
see_emit_use_extension (void **slot, void *b)
{
  rtx use_se = *slot;
  struct see_ref_s *curr_ref_s = (struct see_ref_s *) b;

  if (INSN_DELETED_P (use_se))


    return 1;

  if (dump_file)
    {
      fprintf (dump_file, "Inserting use extension:\n");
      print_rtl_single (dump_file, use_se);
    }

  add_insn_before (use_se, curr_ref_s->insn);

  return 1;
}
