
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;
struct file {int dummy; } ;
typedef enum pid_type { ____Placeholder_pid_type } pid_type ;


 int PIDTYPE_PGID ;
 int PIDTYPE_PID ;
 int __f_setown (struct file*,struct pid*,int,int) ;
 struct pid* find_vpid (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int f_setown(struct file *filp, unsigned long arg, int force)
{
 enum pid_type type;
 struct pid *pid;
 int who = arg;
 int result;
 type = PIDTYPE_PID;
 if (who < 0) {
  type = PIDTYPE_PGID;
  who = -who;
 }
 rcu_read_lock();
 pid = find_vpid(who);
 result = __f_setown(filp, pid, type, force);
 rcu_read_unlock();
 return result;
}
