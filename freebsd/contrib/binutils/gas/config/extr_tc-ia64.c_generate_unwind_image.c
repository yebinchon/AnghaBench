
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int unw_rec_list ;
typedef int segT ;
typedef int offsetT ;
struct TYPE_5__ {scalar_t__ X_add_symbol; scalar_t__ X_add_number; int X_op; } ;
typedef TYPE_1__ expressionS ;
typedef int bfd_reloc_code_real_type ;
struct TYPE_7__ {int pointer_size; int flags; int pointer_size_shift; } ;
struct TYPE_6__ {scalar_t__ personality_routine; int * current_entry; int tail; int list; int info; scalar_t__ force_unwind_entry; } ;


 int BFD_RELOC_IA64_LTOFF_FPTR32LSB ;
 int BFD_RELOC_IA64_LTOFF_FPTR32MSB ;
 int BFD_RELOC_IA64_LTOFF_FPTR64LSB ;
 int BFD_RELOC_IA64_LTOFF_FPTR64MSB ;
 int EF_IA_64_ABI64 ;
 int EF_IA_64_BE ;
 int NOT_A_CHAR ;
 int O_symbol ;
 int SPECIAL_SECTION_UNWIND_INFO ;
 int add_unwind_entry (int ,int ) ;
 int calc_record_size (int *) ;
 int expr_build_dot () ;
 int fix_new_exp (int ,scalar_t__,int,TYPE_1__*,int ,int ) ;
 int fixup_unw_records (int *,int) ;
 int frag_align (int ,int ,int ) ;
 int frag_now ;
 scalar_t__ frag_now_fix () ;
 int frag_var (int ,int,int,int ,int ,int ,char*) ;
 int free_saved_prologue_counts () ;
 int ia64_flush_insns () ;
 TYPE_3__ md ;
 int now_seg ;
 int * optimize_unw_records (int ) ;
 int output_endp () ;
 int record_alignment (int ,int ) ;
 int rs_machine_dependent ;
 int start_unwind_section (int const,int ) ;
 TYPE_2__ unwind ;

__attribute__((used)) static void
generate_unwind_image (const segT text_seg)
{
  int size, pad;
  unw_rec_list *list;



  add_unwind_entry (output_endp (), NOT_A_CHAR);



  ia64_flush_insns ();


  list = optimize_unw_records (unwind.list);
  fixup_unw_records (list, 1);
  size = calc_record_size (list);

  if (size > 0 || unwind.force_unwind_entry)
    {
      unwind.force_unwind_entry = 0;

      pad = size % md.pointer_size;
      if (pad != 0)
 size += md.pointer_size - pad;

      size += 8;

      if (unwind.personality_routine)
 size += md.pointer_size;
    }


  if (size != 0)
    {
      expressionS exp;
      bfd_reloc_code_real_type reloc;

      start_unwind_section (text_seg, SPECIAL_SECTION_UNWIND_INFO);



      frag_align (md.pointer_size_shift, 0, 0);
      record_alignment (now_seg, md.pointer_size_shift);


      unwind.info = expr_build_dot ();

      frag_var (rs_machine_dependent, size, size, 0, 0,
  (offsetT) (long) unwind.personality_routine,
  (char *) list);


      if (unwind.personality_routine != 0)
 {
   exp.X_op = O_symbol;
   exp.X_add_symbol = unwind.personality_routine;
   exp.X_add_number = 0;

   if (md.flags & EF_IA_64_BE)
     {
       if (md.flags & EF_IA_64_ABI64)
  reloc = BFD_RELOC_IA64_LTOFF_FPTR64MSB;
       else
  reloc = BFD_RELOC_IA64_LTOFF_FPTR32MSB;
     }
   else
     {
       if (md.flags & EF_IA_64_ABI64)
  reloc = BFD_RELOC_IA64_LTOFF_FPTR64LSB;
       else
  reloc = BFD_RELOC_IA64_LTOFF_FPTR32LSB;
     }

   fix_new_exp (frag_now, frag_now_fix () - md.pointer_size,
         md.pointer_size, &exp, 0, reloc);
   unwind.personality_routine = 0;
 }
    }

  free_saved_prologue_counts ();
  unwind.list = unwind.tail = unwind.current_entry = ((void*)0);
}
