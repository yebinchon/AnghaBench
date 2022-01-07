
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int utime; } ;
typedef int cputime_t ;



__attribute__((used)) static inline cputime_t virt_ticks(struct task_struct *p)
{
 return p->utime;
}
