
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static void process_timeout(unsigned long __data)
{
 wake_up_process((struct task_struct *)__data);
}
