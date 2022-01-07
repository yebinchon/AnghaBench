
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct symtab_and_line {int dummy; } ;
struct frame_info {int dummy; } ;
struct expression {int dummy; } ;
struct breakpoint {struct breakpoint* related_breakpoint; TYPE_1__* loc; void* frame_id; int disposition; int enable_state; void* watchpoint_frame; void* cond_string; struct expression* cond; struct value* val; void* exp_string; struct block* exp_valid_block; struct expression* exp; scalar_t__ number; } ;
struct block {int dummy; } ;
typedef enum bptype { ____Placeholder_bptype } bptype ;
struct TYPE_2__ {int requested_address; int address; } ;


 int TARGET_CAN_USE_HARDWARE_WATCHPOINT (int,int,int) ;
 scalar_t__ VALUE_LAZY (struct value*) ;
 int adjust_breakpoint_address (int ) ;
 struct frame_info* block_innermost_frame (struct block*) ;
 int bp_access_watchpoint ;
 int bp_enabled ;
 int bp_hardware_watchpoint ;
 int bp_read_watchpoint ;
 int bp_watchpoint ;
 int bp_watchpoint_scope ;
 scalar_t__ breakpoint_count ;
 int can_use_hardware_watchpoint (struct value*) ;
 struct breakpoint* create_internal_breakpoint (int ,int ) ;
 int disp_del ;
 int disp_donttouch ;
 int error (char*) ;
 struct value* evaluate_expression (struct expression*) ;
 void* get_frame_id (struct frame_info*) ;
 int get_frame_pc (struct frame_info*) ;
 struct frame_info* get_prev_frame (struct frame_info*) ;
 int hw_access ;
 int hw_read ;
 int hw_watchpoint_used_count (int,int*) ;
 int init_sal (struct symtab_and_line*) ;
 struct block* innermost_block ;
 int memset (void**,int ,int) ;
 int mention (struct breakpoint*) ;
 struct expression* parse_exp_1 (char**,int ,int ) ;
 int release_value (struct value*) ;
 void* savestring (char*,int) ;
 int set_breakpoint_count (scalar_t__) ;
 struct breakpoint* set_raw_breakpoint (struct symtab_and_line,int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int target_has_execution ;
 int value_fetch_lazy (struct value*) ;
 int value_free_to_mark (struct value*) ;
 struct value* value_mark () ;
 int warning (char*) ;

__attribute__((used)) static void
watch_command_1 (char *arg, int accessflag, int from_tty)
{
  struct breakpoint *b;
  struct symtab_and_line sal;
  struct expression *exp;
  struct block *exp_valid_block;
  struct value *val, *mark;
  struct frame_info *frame;
  struct frame_info *prev_frame = ((void*)0);
  char *exp_start = ((void*)0);
  char *exp_end = ((void*)0);
  char *tok, *end_tok;
  int toklen;
  char *cond_start = ((void*)0);
  char *cond_end = ((void*)0);
  struct expression *cond = ((void*)0);
  int i, other_type_used, target_resources_ok = 0;
  enum bptype bp_type;
  int mem_cnt = 0;

  init_sal (&sal);


  innermost_block = ((void*)0);
  exp_start = arg;
  exp = parse_exp_1 (&arg, 0, 0);
  exp_end = arg;
  exp_valid_block = innermost_block;
  mark = value_mark ();
  val = evaluate_expression (exp);
  release_value (val);
  if (VALUE_LAZY (val))
    value_fetch_lazy (val);

  tok = arg;
  while (*tok == ' ' || *tok == '\t')
    tok++;
  end_tok = tok;

  while (*end_tok != ' ' && *end_tok != '\t' && *end_tok != '\000')
    end_tok++;

  toklen = end_tok - tok;
  if (toklen >= 1 && strncmp (tok, "if", toklen) == 0)
    {
      tok = cond_start = end_tok + 1;
      cond = parse_exp_1 (&tok, 0, 0);
      cond_end = tok;
    }
  if (*tok)
    error ("Junk at end of command.");

  if (accessflag == hw_read)
    bp_type = bp_read_watchpoint;
  else if (accessflag == hw_access)
    bp_type = bp_access_watchpoint;
  else
    bp_type = bp_hardware_watchpoint;

  mem_cnt = can_use_hardware_watchpoint (val);
  if (mem_cnt == 0 && bp_type != bp_hardware_watchpoint)
    error ("Expression cannot be implemented with read/access watchpoint.");
  if (mem_cnt != 0)
    {
      i = hw_watchpoint_used_count (bp_type, &other_type_used);
      target_resources_ok =
 TARGET_CAN_USE_HARDWARE_WATCHPOINT (bp_type, i + mem_cnt,
         other_type_used);
      if (target_resources_ok == 0 && bp_type != bp_hardware_watchpoint)
 error ("Target does not support this type of hardware watchpoint.");

      if (target_resources_ok < 0 && bp_type != bp_hardware_watchpoint)
 error ("Target can only support one kind of HW watchpoint at a time.");
    }
  if (!mem_cnt || target_resources_ok <= 0)
    bp_type = bp_watchpoint;


  b = set_raw_breakpoint (sal, bp_type);
  set_breakpoint_count (breakpoint_count + 1);
  b->number = breakpoint_count;
  b->disposition = disp_donttouch;
  b->exp = exp;
  b->exp_valid_block = exp_valid_block;
  b->exp_string = savestring (exp_start, exp_end - exp_start);
  b->val = val;
  b->cond = cond;
  if (cond_start)
    b->cond_string = savestring (cond_start, cond_end - cond_start);
  else
    b->cond_string = 0;

  frame = block_innermost_frame (exp_valid_block);
  if (frame)
    {
      prev_frame = get_prev_frame (frame);
      b->watchpoint_frame = get_frame_id (frame);
    }
  else
    {
      memset (&b->watchpoint_frame, 0, sizeof (b->watchpoint_frame));
    }




  if (innermost_block)
    {
      if (prev_frame)
 {
   struct breakpoint *scope_breakpoint;
   scope_breakpoint = create_internal_breakpoint (get_frame_pc (prev_frame),
        bp_watchpoint_scope);

   scope_breakpoint->enable_state = bp_enabled;


   scope_breakpoint->disposition = disp_del;


   scope_breakpoint->frame_id = get_frame_id (prev_frame);


   scope_breakpoint->loc->requested_address
     = get_frame_pc (prev_frame);
   scope_breakpoint->loc->address
     = adjust_breakpoint_address (scope_breakpoint->loc->requested_address);



   b->related_breakpoint = scope_breakpoint;
 }
    }
  value_free_to_mark (mark);
  mention (b);
}
