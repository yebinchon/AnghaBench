
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int start_time; } ;


 int started_after_time (struct task_struct*,int *,struct task_struct*) ;

__attribute__((used)) static inline int started_after(void *p1, void *p2)
{
 struct task_struct *t1 = p1;
 struct task_struct *t2 = p2;
 return started_after_time(t1, &t2->start_time, t2);
}
