
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;
struct agent_expr {int dummy; } ;


 int ax_print (int ,struct agent_expr*) ;
 int do_cleanups (struct cleanup*) ;
 int dont_repeat () ;
 int error (char*) ;
 int error_no_arg (char*) ;
 int free_current_contents ;
 int gdb_stdout ;
 struct agent_expr* gen_trace_for_expr (int ,struct expression*) ;
 struct frame_info* get_current_frame () ;
 int get_frame_pc (struct frame_info*) ;
 struct cleanup* make_cleanup (int ,struct expression**) ;
 int make_cleanup_free_agent_expr (struct agent_expr*) ;
 scalar_t__ overlay_debugging ;
 struct expression* parse_expression (char*) ;

__attribute__((used)) static void
agent_command (char *exp, int from_tty)
{
  struct cleanup *old_chain = 0;
  struct expression *expr;
  struct agent_expr *agent;
  struct frame_info *fi = get_current_frame ();





  if (overlay_debugging)
    error ("GDB can't do agent expression translation with overlays.");

  if (exp == 0)
    error_no_arg ("expression to translate");

  expr = parse_expression (exp);
  old_chain = make_cleanup (free_current_contents, &expr);
  agent = gen_trace_for_expr (get_frame_pc (fi), expr);
  make_cleanup_free_agent_expr (agent);
  ax_print (gdb_stdout, agent);




  do_cleanups (old_chain);
  dont_repeat ();
}
