
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;


 int task_sid (struct task_struct*) ;

__attribute__((used)) static void selinux_task_getsecid(struct task_struct *p, u32 *secid)
{
 *secid = task_sid(p);
}
