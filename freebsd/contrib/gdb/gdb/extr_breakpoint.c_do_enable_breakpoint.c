
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct frame_info {int dummy; } ;
struct breakpoint {scalar_t__ type; scalar_t__ enable_state; int disposition; int number; int val; int exp; int watchpoint_frame; int * exp_valid_block; scalar_t__ pending; } ;
typedef enum bpdisp { ____Placeholder_bpdisp } bpdisp ;


 scalar_t__ GDB_RC_OK ;
 int TARGET_CAN_USE_HARDWARE_WATCHPOINT (scalar_t__,int,int) ;
 scalar_t__ VALUE_LAZY (int ) ;
 scalar_t__ bp_access_watchpoint ;
 void* bp_disabled ;
 scalar_t__ bp_enabled ;
 scalar_t__ bp_hardware_breakpoint ;
 scalar_t__ bp_hardware_watchpoint ;
 scalar_t__ bp_permanent ;
 scalar_t__ bp_read_watchpoint ;
 scalar_t__ bp_watchpoint ;
 int breakpoint_modify_event (int ) ;
 int breakpoints_changed () ;
 int can_use_hardware_watchpoint (int ) ;
 int check_duplicates (struct breakpoint*) ;
 int delete_breakpoint (struct breakpoint*) ;
 struct frame_info* deprecated_selected_frame ;
 int error (char*) ;
 int evaluate_expression (int ) ;
 struct frame_info* fr ;
 struct frame_info* frame_find_by_id (int ) ;
 int frame_relative_level (struct frame_info*) ;
 int hw_breakpoint_used_count () ;
 int hw_watchpoint_used_count (scalar_t__,int*) ;
 int modify_breakpoint_hook (struct breakpoint*) ;
 int printf_filtered (char*,int ) ;
 int release_value (int ) ;
 scalar_t__ resolve_pending_breakpoint (struct breakpoint*) ;
 int select_frame (struct frame_info*) ;
 int value_fetch_lazy (int ) ;
 int value_free (int ) ;
 int value_free_to_mark (struct value*) ;
 struct value* value_mark () ;

__attribute__((used)) static void
do_enable_breakpoint (struct breakpoint *bpt, enum bpdisp disposition)
{
  struct frame_info *save_selected_frame = ((void*)0);
  int save_selected_frame_level = -1;
  int target_resources_ok, other_type_used;
  struct value *mark;

  if (bpt->type == bp_hardware_breakpoint)
    {
      int i;
      i = hw_breakpoint_used_count ();
      target_resources_ok =
 TARGET_CAN_USE_HARDWARE_WATCHPOINT (bp_hardware_breakpoint,
         i + 1, 0);
      if (target_resources_ok == 0)
 error ("No hardware breakpoint support in the target.");
      else if (target_resources_ok < 0)
 error ("Hardware breakpoints used exceeds limit.");
    }

  if (bpt->pending)
    {
      if (bpt->enable_state != bp_enabled)
 {



   breakpoints_changed ();
    if (resolve_pending_breakpoint (bpt) == GDB_RC_OK)
     {
       delete_breakpoint (bpt);
       return;
     }
   bpt->enable_state = bp_enabled;
   bpt->disposition = disposition;
 }
    }
  else
    {
      if (bpt->enable_state != bp_permanent)
 bpt->enable_state = bp_enabled;
      bpt->disposition = disposition;
      check_duplicates (bpt);
      breakpoints_changed ();

      if (bpt->type == bp_watchpoint ||
   bpt->type == bp_hardware_watchpoint ||
   bpt->type == bp_read_watchpoint ||
   bpt->type == bp_access_watchpoint)
 {
   if (bpt->exp_valid_block != ((void*)0))
     {
       struct frame_info *fr =
  fr = frame_find_by_id (bpt->watchpoint_frame);
       if (fr == ((void*)0))
  {
    printf_filtered ("Cannot enable watchpoint %d because the block in which its expression\nis valid is not currently in scope.\n", bpt->number);


    bpt->enable_state = bp_disabled;
    return;
  }

       save_selected_frame = deprecated_selected_frame;
       save_selected_frame_level = frame_relative_level (deprecated_selected_frame);
       select_frame (fr);
     }

   value_free (bpt->val);
   mark = value_mark ();
   bpt->val = evaluate_expression (bpt->exp);
   release_value (bpt->val);
   if (VALUE_LAZY (bpt->val))
     value_fetch_lazy (bpt->val);

   if (bpt->type == bp_hardware_watchpoint ||
       bpt->type == bp_read_watchpoint ||
       bpt->type == bp_access_watchpoint)
     {
       int i = hw_watchpoint_used_count (bpt->type, &other_type_used);
       int mem_cnt = can_use_hardware_watchpoint (bpt->val);


       (void) mem_cnt, i;
       target_resources_ok = TARGET_CAN_USE_HARDWARE_WATCHPOINT (
         bpt->type, i + mem_cnt, other_type_used);


       if (target_resources_ok < 0)
  {
    printf_filtered ("Cannot enable watchpoint %d because target watch resources\nhave been allocated for other watchpoints.\n", bpt->number);


    bpt->enable_state = bp_disabled;
    value_free_to_mark (mark);
    return;
  }
     }

   if (save_selected_frame_level >= 0)
     select_frame (save_selected_frame);
   value_free_to_mark (mark);
 }
    }

  if (modify_breakpoint_hook)
    modify_breakpoint_hook (bpt);
  breakpoint_modify_event (bpt->number);
}
