
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eh_region {scalar_t__ landing_pad; struct eh_region* outer; } ;
typedef scalar_t__ rtx ;
typedef int htab_t ;
struct TYPE_4__ {int uses_eh_lsda; TYPE_1__* eh; } ;
struct TYPE_3__ {int region_array; int action_record_data; int * region_tree; } ;
typedef int NOTE_EH_HANDLER ;


 scalar_t__ CALL_P (scalar_t__) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ INTVAL (int ) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NONJUMP_INSN_P (scalar_t__) ;
 int NOTE_INSN_EH_REGION_BEG ;
 int NOTE_INSN_EH_REGION_END ;
 scalar_t__ NULL_RTX ;
 int PATTERN (scalar_t__) ;
 int REG_EH_REGION ;
 scalar_t__ SEQUENCE ;
 scalar_t__ USING_SJLJ_EXCEPTIONS ;
 int VARRAY_UCHAR_INIT (int ,int,char*) ;
 struct eh_region* VEC_index (int ,int ,scalar_t__) ;
 int XEXP (scalar_t__,int ) ;
 scalar_t__ XVECEXP (int ,int ,int ) ;
 int action_record_eq ;
 int action_record_hash ;
 int add_call_site (scalar_t__,int) ;
 TYPE_2__* cfun ;
 int collect_one_action_chain (int ,struct eh_region*) ;
 int eh_region ;
 scalar_t__ emit_note_after (int ,scalar_t__) ;
 scalar_t__ emit_note_before (int ,scalar_t__) ;
 scalar_t__ find_reg_note (scalar_t__,int ,scalar_t__) ;
 scalar_t__ flag_non_call_exceptions ;
 int free ;
 scalar_t__ get_insns () ;
 int htab_create (int,int ,int ,int ) ;
 int htab_delete (int ) ;
 scalar_t__ may_trap_p (int ) ;

unsigned int
convert_to_eh_region_ranges (void)
{
  rtx insn, iter, note;
  htab_t ar_hash;
  int last_action = -3;
  rtx last_action_insn = NULL_RTX;
  rtx last_landing_pad = NULL_RTX;
  rtx first_no_action_insn = NULL_RTX;
  int call_site = 0;

  if (USING_SJLJ_EXCEPTIONS || cfun->eh->region_tree == ((void*)0))
    return 0;

  VARRAY_UCHAR_INIT (cfun->eh->action_record_data, 64, "action_record_data");

  ar_hash = htab_create (31, action_record_hash, action_record_eq, free);

  for (iter = get_insns (); iter ; iter = NEXT_INSN (iter))
    if (INSN_P (iter))
      {
 struct eh_region *region;
 int this_action;
 rtx this_landing_pad;

 insn = iter;
 if (NONJUMP_INSN_P (insn)
     && GET_CODE (PATTERN (insn)) == SEQUENCE)
   insn = XVECEXP (PATTERN (insn), 0, 0);

 note = find_reg_note (insn, REG_EH_REGION, NULL_RTX);
 if (!note)
   {
     if (! (CALL_P (insn)
     || (flag_non_call_exceptions
         && may_trap_p (PATTERN (insn)))))
       continue;
     this_action = -1;
     region = ((void*)0);
   }
 else
   {
     if (INTVAL (XEXP (note, 0)) <= 0)
       continue;
     region = VEC_index (eh_region, cfun->eh->region_array, INTVAL (XEXP (note, 0)));
     this_action = collect_one_action_chain (ar_hash, region);
   }



 if (this_action != -1)
   cfun->uses_eh_lsda = 1;



 else if (last_action == -3)
   {
     first_no_action_insn = iter;
     last_action = -1;
   }



 if (this_action >= 0)
   {
     struct eh_region *o;
     for (o = region; ! o->landing_pad ; o = o->outer)
       continue;
     this_landing_pad = o->landing_pad;
   }
 else
   this_landing_pad = NULL_RTX;



 if (last_action != this_action
     || last_landing_pad != this_landing_pad)
   {



     if (last_action >= -1)
       {

  if (first_no_action_insn)
    {
      call_site = add_call_site (NULL_RTX, 0);
      note = emit_note_before (NOTE_INSN_EH_REGION_BEG,
          first_no_action_insn);
      NOTE_EH_HANDLER (note) = call_site;
      first_no_action_insn = NULL_RTX;
    }

  note = emit_note_after (NOTE_INSN_EH_REGION_END,
     last_action_insn);
  NOTE_EH_HANDLER (note) = call_site;
       }



     if (this_action >= -1)
       {
  call_site = add_call_site (this_landing_pad,
        this_action < 0 ? 0 : this_action);
  note = emit_note_before (NOTE_INSN_EH_REGION_BEG, iter);
  NOTE_EH_HANDLER (note) = call_site;
       }

     last_action = this_action;
     last_landing_pad = this_landing_pad;
   }
 last_action_insn = iter;
      }

  if (last_action >= -1 && ! first_no_action_insn)
    {
      note = emit_note_after (NOTE_INSN_EH_REGION_END, last_action_insn);
      NOTE_EH_HANDLER (note) = call_site;
    }

  htab_delete (ar_hash);
  return 0;
}
