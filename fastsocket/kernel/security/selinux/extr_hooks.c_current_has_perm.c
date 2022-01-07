
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;


 int SECCLASS_PROCESS ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 int current_sid () ;
 int task_sid (struct task_struct const*) ;

__attribute__((used)) static int current_has_perm(const struct task_struct *tsk,
       u32 perms)
{
 u32 sid, tsid;

 sid = current_sid();
 tsid = task_sid(tsk);
 return avc_has_perm(sid, tsid, SECCLASS_PROCESS, perms, ((void*)0));
}
