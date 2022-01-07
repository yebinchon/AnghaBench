
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_report {int action; int resume_action; } ;
struct utrace {int dummy; } ;
struct task_struct {int dummy; } ;


 int TIF_SIGPENDING ;






 int WARN (int,char*) ;
 int arch_has_block_step () ;
 int arch_has_single_step () ;
 int finish_report_reset (struct task_struct*,struct utrace*,struct utrace_report*) ;
 int likely (int ) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 int signal_pending (struct task_struct*) ;
 int user_disable_single_step (struct task_struct*) ;
 int user_enable_block_step (struct task_struct*) ;
 int user_enable_single_step (struct task_struct*) ;
 int utrace_stop (struct task_struct*,struct utrace*,int ) ;

__attribute__((used)) static void finish_resume_report(struct task_struct *task,
     struct utrace *utrace,
     struct utrace_report *report)
{
 finish_report_reset(task, utrace, report);

 switch (report->action) {
 case 128:
  utrace_stop(task, utrace, report->resume_action);
  break;

 case 132:
  if (!signal_pending(task))
   set_tsk_thread_flag(task, TIF_SIGPENDING);
  break;

 case 133:
  if (likely(arch_has_block_step())) {
   user_enable_block_step(task);
   break;
  }






  WARN(1, "UTRACE_BLOCKSTEP when !arch_has_block_step()");

 case 129:
  if (likely(arch_has_single_step())) {
   user_enable_single_step(task);
  } else {





   WARN(1,
        "UTRACE_SINGLESTEP when !arch_has_single_step()");
  }
  break;

 case 131:
 case 130:
 default:
  user_disable_single_step(task);
  break;
 }
}
