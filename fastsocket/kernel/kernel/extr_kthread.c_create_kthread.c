
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthread_create_info {int done; int result; } ;


 int CLONE_FILES ;
 int CLONE_FS ;
 int ERR_PTR (int) ;
 int SIGCHLD ;
 int complete (int *) ;
 int kernel_thread (int ,struct kthread_create_info*,int) ;
 int kthread ;

__attribute__((used)) static void create_kthread(struct kthread_create_info *create)
{
 int pid;


 pid = kernel_thread(kthread, create, CLONE_FS | CLONE_FILES | SIGCHLD);
 if (pid < 0) {
  create->result = ERR_PTR(pid);
  complete(&create->done);
 }
}
