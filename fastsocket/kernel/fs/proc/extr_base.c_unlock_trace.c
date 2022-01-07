
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int cred_guard_mutex; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void unlock_trace(struct task_struct *task)
{
 mutex_unlock(&task->cred_guard_mutex);
}
