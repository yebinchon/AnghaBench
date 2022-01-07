
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {char* comm; } ;
struct seq_file {int dummy; } ;
struct gfs2_holder {scalar_t__ gh_owner_pid; int gh_error; int gh_iflags; int gh_flags; int gh_state; int gh_ip; } ;


 int KSYM_SYMBOL_LEN ;
 int PIDTYPE_PID ;
 int gfs2_print_dbg (struct seq_file*,char*,int ,int ,int ,long,char*,char*) ;
 int hflags2str (char*,int ,int ) ;
 scalar_t__ pid_nr (scalar_t__) ;
 struct task_struct* pid_task (scalar_t__,int ) ;
 int sprint_symbol (char*,int ) ;
 int state2str (int ) ;

__attribute__((used)) static int dump_holder(struct seq_file *seq, const struct gfs2_holder *gh)
{
 struct task_struct *gh_owner = ((void*)0);
 char buffer[KSYM_SYMBOL_LEN];
 char flags_buf[32];

 sprint_symbol(buffer, gh->gh_ip);
 if (gh->gh_owner_pid)
  gh_owner = pid_task(gh->gh_owner_pid, PIDTYPE_PID);
 gfs2_print_dbg(seq, " H: s:%s f:%s e:%d p:%ld [%s] %s\n",
    state2str(gh->gh_state),
    hflags2str(flags_buf, gh->gh_flags, gh->gh_iflags),
    gh->gh_error,
    gh->gh_owner_pid ? (long)pid_nr(gh->gh_owner_pid) : -1,
    gh_owner ? gh_owner->comm : "(ended)", buffer);
 return 0;
}
