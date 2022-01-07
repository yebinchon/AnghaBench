
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct value {int dummy; } ;
struct frame_info {int dummy; } ;
struct breakpoint {void* disposition; TYPE_1__* related_breakpoint; int number; struct value* val; int exp; int watchpoint_frame; int * exp_valid_block; } ;
typedef TYPE_2__* bpstat ;
struct TYPE_4__ {struct breakpoint* breakpoint_at; struct value* old_val; } ;
struct TYPE_3__ {void* disposition; } ;


 int WP_DELETED ;
 int WP_VALUE_CHANGED ;
 int WP_VALUE_NOT_CHANGED ;
 int current_gdbarch ;
 void* disp_del_at_next_stop ;
 struct value* evaluate_expression (int ) ;
 struct frame_info* frame_find_by_id (int ) ;
 scalar_t__ gdbarch_in_function_epilogue_p (int ,int ) ;
 struct frame_info* get_current_frame () ;
 int read_pc () ;
 int reinit_frame_cache () ;
 int release_value (struct value*) ;
 int select_frame (struct frame_info*) ;
 int ui_out_field_int (int ,char*,int ) ;
 int ui_out_field_string (int ,char*,char*) ;
 scalar_t__ ui_out_is_mi_like_p (int ) ;
 int ui_out_text (int ,char*) ;
 int uiout ;
 int value_equal (struct value*,struct value*) ;
 int value_free_to_mark (struct value*) ;
 struct value* value_mark () ;

__attribute__((used)) static int
watchpoint_check (void *p)
{
  bpstat bs = (bpstat) p;
  struct breakpoint *b;
  struct frame_info *fr;
  int within_current_scope;

  b = bs->breakpoint_at;

  if (b->exp_valid_block == ((void*)0))
    within_current_scope = 1;
  else
    {



      reinit_frame_cache ();
      fr = frame_find_by_id (b->watchpoint_frame);
      within_current_scope = (fr != ((void*)0));
      if ((!within_current_scope || fr == get_current_frame ())
          && gdbarch_in_function_epilogue_p (current_gdbarch, read_pc ()))
 return WP_VALUE_NOT_CHANGED;
      if (fr && within_current_scope)



 select_frame (fr);
    }

  if (within_current_scope)
    {





      struct value *mark = value_mark ();
      struct value *new_val = evaluate_expression (bs->breakpoint_at->exp);
      if (!value_equal (b->val, new_val))
 {
   release_value (new_val);
   value_free_to_mark (mark);
   bs->old_val = b->val;
   b->val = new_val;

   return WP_VALUE_CHANGED;
 }
      else
 {

   value_free_to_mark (mark);

   return WP_VALUE_NOT_CHANGED;
 }
    }
  else
    {
      if (ui_out_is_mi_like_p (uiout))
 ui_out_field_string (uiout, "reason", "watchpoint-scope");
      ui_out_text (uiout, "\nWatchpoint ");
      ui_out_field_int (uiout, "wpnum", bs->breakpoint_at->number);
      ui_out_text (uiout, " deleted because the program has left the block in\nwhich its expression is valid.\n");


      if (b->related_breakpoint)
 b->related_breakpoint->disposition = disp_del_at_next_stop;
      b->disposition = disp_del_at_next_stop;

      return WP_DELETED;
    }
}
