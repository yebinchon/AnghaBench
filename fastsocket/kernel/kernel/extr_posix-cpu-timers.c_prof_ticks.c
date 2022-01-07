
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int stime; int utime; } ;
typedef int cputime_t ;


 int cputime_add (int ,int ) ;

__attribute__((used)) static inline cputime_t prof_ticks(struct task_struct *p)
{
 return cputime_add(p->utime, p->stime);
}
