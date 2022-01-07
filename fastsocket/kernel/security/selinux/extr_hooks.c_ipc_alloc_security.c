
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct task_struct {int dummy; } ;
struct kern_ipc_perm {struct ipc_security_struct* security; } ;
struct ipc_security_struct {int sid; int sclass; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ipc_security_struct* kzalloc (int,int ) ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static int ipc_alloc_security(struct task_struct *task,
         struct kern_ipc_perm *perm,
         u16 sclass)
{
 struct ipc_security_struct *isec;
 u32 sid;

 isec = kzalloc(sizeof(struct ipc_security_struct), GFP_KERNEL);
 if (!isec)
  return -ENOMEM;

 sid = task_sid(task);
 isec->sclass = sclass;
 isec->sid = sid;
 perm->security = isec;

 return 0;
}
