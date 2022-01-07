
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static void nilfs_construction_timeout(unsigned long data)
{
 struct task_struct *p = (struct task_struct *)data;
 wake_up_process(p);
}
