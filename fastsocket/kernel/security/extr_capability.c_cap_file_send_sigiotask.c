
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct fown_struct {int dummy; } ;



__attribute__((used)) static int cap_file_send_sigiotask(struct task_struct *tsk,
       struct fown_struct *fown, int sig)
{
 return 0;
}
