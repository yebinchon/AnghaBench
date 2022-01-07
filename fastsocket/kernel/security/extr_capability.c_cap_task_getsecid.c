
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct task_struct {int dummy; } ;



__attribute__((used)) static void cap_task_getsecid(struct task_struct *p, u32 *secid)
{
 *secid = 0;
}
