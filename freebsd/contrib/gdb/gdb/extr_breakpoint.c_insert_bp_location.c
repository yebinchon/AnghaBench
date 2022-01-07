
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct value {struct value* next; } ;
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;
struct bp_location {int inserted; scalar_t__ loc_type; TYPE_3__* owner; scalar_t__ address; int shadow_contents; int * section; scalar_t__ duplicate; } ;
struct TYPE_8__ {int enable_p; int kind; } ;
typedef TYPE_2__ args_for_catchpoint_enable ;
struct TYPE_9__ {scalar_t__ disposition; scalar_t__ type; void* enable_state; int number; TYPE_1__* related_breakpoint; struct value* val_chain; int exp; int watchpoint_frame; int * exp_valid_block; } ;
struct TYPE_7__ {scalar_t__ disposition; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ DISABLE_UNSETTABLE_BREAK (scalar_t__) ;
 int EX_EVENT_CATCH ;
 int EX_EVENT_THROW ;
 int RETURN_MASK_ALL ;
 int RETURN_MASK_ERROR ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ARRAY ;
 scalar_t__ TYPE_CODE_STRUCT ;
 int TYPE_LENGTH (int ) ;
 scalar_t__ VALUE_ADDRESS (struct value*) ;
 int VALUE_CONTENTS (struct value*) ;
 int VALUE_LAZY (struct value*) ;
 scalar_t__ VALUE_LVAL (struct value*) ;
 scalar_t__ VALUE_OFFSET (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 scalar_t__ bp_access_watchpoint ;
 scalar_t__ bp_catch_catch ;
 scalar_t__ bp_catch_exec ;
 scalar_t__ bp_catch_fork ;
 scalar_t__ bp_catch_vfork ;
 void* bp_disabled ;
 scalar_t__ bp_loc_hardware_breakpoint ;
 scalar_t__ bp_loc_hardware_watchpoint ;
 scalar_t__ bp_loc_software_breakpoint ;
 scalar_t__ bp_read_watchpoint ;
 void* bp_shlib_disabled ;
 int breakpoint_enabled (TYPE_3__*) ;
 int catch_errors (int ,TYPE_2__*,char*,int ) ;
 int catch_exceptions (int ,int ,TYPE_3__*,char*,int ) ;
 struct type* check_typedef (int ) ;
 int cover_target_enable_exception_callback ;
 struct frame_info* deprecated_selected_frame ;
 scalar_t__ disp_del_at_next_stop ;
 int do_cleanups (struct cleanup*) ;
 scalar_t__ ep_is_exception_catchpoint (TYPE_3__*) ;
 struct value* evaluate_expression (int ) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fprintf_unfiltered (struct ui_file*,char*,...) ;
 struct frame_info* frame_find_by_id (int ) ;
 int frame_relative_level (struct frame_info*) ;
 int hw_access ;
 int hw_read ;
 int hw_write ;
 int insert_catchpoint ;
 scalar_t__ lval_memory ;
 struct cleanup* make_cleanup (int ,char*) ;
 int mark_uninserted ;
 scalar_t__ overlay_debugging ;
 int overlay_events_enabled ;
 scalar_t__ overlay_unmapped_address (scalar_t__,int *) ;
 scalar_t__ ovly_off ;
 int print_address_numeric (scalar_t__,int,struct ui_file*) ;
 int printf_filtered (char*,...) ;
 int remove_breakpoint (struct bp_location*,int ) ;
 int safe_strerror (int) ;
 scalar_t__ section_is_mapped (int *) ;
 int section_is_overlay (int *) ;
 int select_frame (struct frame_info*) ;
 int target_insert_breakpoint (scalar_t__,int ) ;
 int target_insert_hw_breakpoint (scalar_t__,int ) ;
 int target_insert_watchpoint (scalar_t__,int,int) ;
 int uiout ;
 struct value* value_mark () ;
 int value_release_to_mark (struct value*) ;
 int warning (char*,int ) ;
 int xfree ;
 char* xstrprintf (char*,int ) ;

__attribute__((used)) static int
insert_bp_location (struct bp_location *bpt,
      struct ui_file *tmp_error_stream,
      int *disabled_breaks, int *process_warning,
      int *hw_breakpoint_error)
{
  int val = 0;



  if (!breakpoint_enabled (bpt->owner))
    return 0;

  if (bpt->inserted || bpt->duplicate)
    return 0;

  if (bpt->loc_type == bp_loc_software_breakpoint
      || bpt->loc_type == bp_loc_hardware_breakpoint)
    {

      if (overlay_debugging == ovly_off
   || bpt->section == ((void*)0)
   || !(section_is_overlay (bpt->section)))
 {


   if (bpt->loc_type == bp_loc_hardware_breakpoint)
     val = target_insert_hw_breakpoint (bpt->address,
            bpt->shadow_contents);
   else
     val = target_insert_breakpoint (bpt->address,
         bpt->shadow_contents);
 }
      else
 {


   if (!overlay_events_enabled)
     {



       if (bpt->loc_type == bp_loc_hardware_breakpoint)
  warning ("hardware breakpoint %d not supported in overlay!\n",
    bpt->owner->number);
       else
  {
    CORE_ADDR addr = overlay_unmapped_address (bpt->address,
            bpt->section);

    val = target_insert_breakpoint (addr, bpt->shadow_contents);
    if (val != 0)
      fprintf_unfiltered (tmp_error_stream,
     "Overlay breakpoint %d failed: in ROM?",
     bpt->owner->number);
  }
     }

   if (section_is_mapped (bpt->section))
     {

       if (bpt->loc_type == bp_loc_hardware_breakpoint)
  val = target_insert_hw_breakpoint (bpt->address,
         bpt->shadow_contents);
       else
  val = target_insert_breakpoint (bpt->address,
      bpt->shadow_contents);
     }
   else
     {


       return 0;
     }
 }

      if (val)
 {
     {



       if (bpt->loc_type == bp_loc_hardware_breakpoint)
  {
    *hw_breakpoint_error = 1;
    fprintf_unfiltered (tmp_error_stream,
          "Cannot insert hardware breakpoint %d.\n",
          bpt->owner->number);
  }
       else
  {
    fprintf_unfiltered (tmp_error_stream,
          "Cannot insert breakpoint %d.\n",
          bpt->owner->number);
    fprintf_filtered (tmp_error_stream,
        "Error accessing memory address ");
    print_address_numeric (bpt->address, 1, tmp_error_stream);
    fprintf_filtered (tmp_error_stream, ": %s.\n",
        safe_strerror (val));
  }

     }
 }
      else
 bpt->inserted = 1;

      return val;
    }

  else if (bpt->loc_type == bp_loc_hardware_watchpoint


    && bpt->owner->disposition != disp_del_at_next_stop)
    {






      struct frame_info *saved_frame;
      int saved_level, within_current_scope;
      struct value *mark = value_mark ();
      struct value *v;






      saved_frame = deprecated_selected_frame;
      saved_level = frame_relative_level (deprecated_selected_frame);


      if (bpt->owner->exp_valid_block == ((void*)0))
 within_current_scope = 1;
      else
 {
   struct frame_info *fi;
   fi = frame_find_by_id (bpt->owner->watchpoint_frame);
   within_current_scope = (fi != ((void*)0));
   if (within_current_scope)
     select_frame (fi);
 }

      if (within_current_scope)
 {






   v = evaluate_expression (bpt->owner->exp);
   VALUE_CONTENTS (v);
   value_release_to_mark (mark);

   bpt->owner->val_chain = v;
   bpt->inserted = 1;


   for (; v; v = v->next)
     {



       if (VALUE_LVAL (v) == lval_memory
    && ! VALUE_LAZY (v))
  {
    struct type *vtype = check_typedef (VALUE_TYPE (v));




    if (v == bpt->owner->val_chain
        || (TYPE_CODE (vtype) != TYPE_CODE_STRUCT
     && TYPE_CODE (vtype) != TYPE_CODE_ARRAY))
      {
        CORE_ADDR addr;
        int len, type;

        addr = VALUE_ADDRESS (v) + VALUE_OFFSET (v);
        len = TYPE_LENGTH (VALUE_TYPE (v));
        type = hw_write;
        if (bpt->owner->type == bp_read_watchpoint)
   type = hw_read;
        else if (bpt->owner->type == bp_access_watchpoint)
   type = hw_access;

        val = target_insert_watchpoint (addr, len, type);
        if (val == -1)
   {






     bpt->inserted = 0;
   }
        val = 0;
      }
  }
     }


   if (!bpt->inserted)
     {
       remove_breakpoint (bpt, mark_uninserted);
       *hw_breakpoint_error = 1;
       fprintf_unfiltered (tmp_error_stream,
      "Could not insert hardware watchpoint %d.\n",
      bpt->owner->number);
       val = -1;
     }
 }
      else
 {
   printf_filtered ("Hardware watchpoint %d deleted ", bpt->owner->number);
   printf_filtered ("because the program has left the block \n");
   printf_filtered ("in which its expression is valid.\n");
   if (bpt->owner->related_breakpoint)
     bpt->owner->related_breakpoint->disposition = disp_del_at_next_stop;
   bpt->owner->disposition = disp_del_at_next_stop;
 }


      if (saved_frame != deprecated_selected_frame
   || saved_level != frame_relative_level (deprecated_selected_frame))
 select_frame (saved_frame);

      return val;
    }

  else if (ep_is_exception_catchpoint (bpt->owner))
    {







      val = target_insert_breakpoint (bpt->address, bpt->shadow_contents);
      if (val)
 {

   fprintf_unfiltered (tmp_error_stream,
         "Cannot insert catchpoint %d; disabling it.\n",
         bpt->owner->number);
   fprintf_filtered (tmp_error_stream,
       "Error accessing memory address ");
   print_address_numeric (bpt->address, 1, tmp_error_stream);
   fprintf_filtered (tmp_error_stream, ": %s.\n",
       safe_strerror (val));
   bpt->owner->enable_state = bp_disabled;
 }
      else
 {


   char *message = xstrprintf ("Error inserting catchpoint %d:\n",
          bpt->owner->number);
   struct cleanup *cleanups = make_cleanup (xfree, message);
   int val;
   args_for_catchpoint_enable args;
   args.kind = bpt->owner->type == bp_catch_catch ?
     EX_EVENT_CATCH : EX_EVENT_THROW;
   args.enable_p = 1;
   val = catch_errors (cover_target_enable_exception_callback,
         &args, message, RETURN_MASK_ALL);
   do_cleanups (cleanups);
   if (val != 0 && val != -1)
     bpt->inserted = 1;


   if (val == -1)
     {

       fprintf_unfiltered (tmp_error_stream,
      "Cannot insert catchpoint %d; disabling it.\n",
      bpt->owner->number);
       bpt->owner->enable_state = bp_disabled;
     }
 }

      return val;
    }

  else if (bpt->owner->type == bp_catch_fork
    || bpt->owner->type == bp_catch_vfork
    || bpt->owner->type == bp_catch_exec)
    {
      char *prefix = xstrprintf ("warning: inserting catchpoint %d: ",
     bpt->owner->number);
      struct cleanup *cleanups = make_cleanup (xfree, prefix);
      val = catch_exceptions (uiout, insert_catchpoint, bpt->owner, prefix,
         RETURN_MASK_ERROR);
      do_cleanups (cleanups);
      if (val < 0)
 bpt->owner->enable_state = bp_disabled;
      else
 bpt->inserted = 1;




      return 0;
    }

  return 0;
}
