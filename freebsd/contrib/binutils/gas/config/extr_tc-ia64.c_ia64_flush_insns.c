
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int type; } ;
struct TYPE_11__ {unsigned long slot_number; int slot_frag; TYPE_1__ r; struct TYPE_11__* next; } ;
typedef TYPE_3__ unw_rec_list ;
typedef int subsegT ;
struct label_fix {int dw2_mark_labels; int sym; struct label_fix* next; } ;
typedef int segT ;
typedef int bfd_boolean ;
struct TYPE_14__ {int flags; } ;
struct TYPE_15__ {struct label_fix* tag_fixups; struct label_fix* label_fixups; TYPE_6__ debug_line; } ;
struct TYPE_10__ {scalar_t__ X_op; } ;
struct TYPE_13__ {scalar_t__ num_slots_in_use; TYPE_2__ qp; int last_text_seg; } ;
struct TYPE_12__ {TYPE_3__* current_entry; } ;


 TYPE_8__ CURR_SLOT ;
 int DWARF2_FLAG_BASIC_BLOCK ;
 int FALSE ;
 scalar_t__ O_register ;
 char* _ (char*) ;
 int as_bad (char*) ;



 int dwarf2_gen_line_info (int ,TYPE_6__*) ;
 int dwarf2_where (TYPE_6__*) ;
 int emit_one_bundle () ;


 scalar_t__ frag_more (int ) ;
 int frag_now ;
 int frag_now_fix () ;




 TYPE_5__ md ;
 int now_seg ;
 int now_subseg ;





 int subseg_set (int ,int ) ;
 int symbol_set_value_now (int ) ;

 TYPE_4__ unwind ;

void
ia64_flush_insns ()
{
  struct label_fix *lfix;
  segT saved_seg;
  subsegT saved_subseg;
  unw_rec_list *ptr;
  bfd_boolean mark;

  if (!md.last_text_seg)
    return;

  saved_seg = now_seg;
  saved_subseg = now_subseg;

  subseg_set (md.last_text_seg, 0);

  while (md.num_slots_in_use > 0)
    emit_one_bundle ();



  mark = FALSE;
  for (lfix = CURR_SLOT.label_fixups; lfix; lfix = lfix->next)
    {
      symbol_set_value_now (lfix->sym);
      mark |= lfix->dw2_mark_labels;
    }
  if (mark)
    {
      dwarf2_where (&CURR_SLOT.debug_line);
      CURR_SLOT.debug_line.flags |= DWARF2_FLAG_BASIC_BLOCK;
      dwarf2_gen_line_info (frag_now_fix (), &CURR_SLOT.debug_line);
    }
  CURR_SLOT.label_fixups = 0;

  for (lfix = CURR_SLOT.tag_fixups; lfix; lfix = lfix->next)
    symbol_set_value_now (lfix->sym);
  CURR_SLOT.tag_fixups = 0;




  for (ptr = unwind.current_entry; ptr; ptr = ptr->next)
    {
      switch (ptr->r.type)
 {
 case 133:
 case 132:
 case 142:
 case 139:
   ptr->slot_number = (unsigned long) frag_more (0);
   ptr->slot_frag = frag_now;
   break;



 case 128:
 case 141:
 case 140:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 131:
 case 130:
 case 129:

   break;

 default:
   as_bad (_("Unwind directive not followed by an instruction."));
   break;
 }
    }
  unwind.current_entry = ((void*)0);

  subseg_set (saved_seg, saved_subseg);

  if (md.qp.X_op == O_register)
    as_bad ("qualifying predicate not followed by instruction");
}
