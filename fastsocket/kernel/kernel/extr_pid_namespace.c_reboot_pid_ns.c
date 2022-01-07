
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {int child_reaper; int reboot; } ;


 int EINVAL ;




 int SIGHUP ;
 int SIGINT ;
 int SIGKILL ;
 int do_exit (int ) ;
 int force_sig (int ,int ) ;
 struct pid_namespace init_pid_ns ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int tasklist_lock ;

int reboot_pid_ns(struct pid_namespace *pid_ns, int cmd)
{
 if (pid_ns == &init_pid_ns)
  return 0;

 switch (cmd) {
 case 128:
 case 129:
  pid_ns->reboot = SIGHUP;
  break;

 case 130:
 case 131:
  pid_ns->reboot = SIGINT;
  break;
 default:
  return -EINVAL;
 }

 read_lock(&tasklist_lock);
 force_sig(SIGKILL, pid_ns->child_reaper);
 read_unlock(&tasklist_lock);

 do_exit(0);


 return 0;
}
