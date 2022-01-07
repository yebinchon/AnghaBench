
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;


 int smack_to_secid (int ) ;
 int task_security (struct task_struct*) ;

__attribute__((used)) static void smack_task_getsecid(struct task_struct *p, u32 *secid)
{
 *secid = smack_to_secid(task_security(p));
}
