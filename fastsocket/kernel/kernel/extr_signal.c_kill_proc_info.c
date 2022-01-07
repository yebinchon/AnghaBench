
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siginfo {int dummy; } ;
typedef int pid_t ;


 int find_vpid (int ) ;
 int kill_pid_info (int,struct siginfo*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int
kill_proc_info(int sig, struct siginfo *info, pid_t pid)
{
 int error;
 rcu_read_lock();
 error = kill_pid_info(sig, info, find_vpid(pid));
 rcu_read_unlock();
 return error;
}
