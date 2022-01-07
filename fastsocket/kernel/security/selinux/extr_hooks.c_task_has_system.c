
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;


 int SECCLASS_SYSTEM ;
 int SECINITSID_KERNEL ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static int task_has_system(struct task_struct *tsk,
      u32 perms)
{
 u32 sid = task_sid(tsk);

 return avc_has_perm(sid, SECINITSID_KERNEL,
       SECCLASS_SYSTEM, perms, ((void*)0));
}
