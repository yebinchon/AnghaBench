
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;


 int KEY__CREATE ;
 int SECCLASS_KEY ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static int may_create_key(u32 ksid,
     struct task_struct *ctx)
{
 u32 sid = task_sid(ctx);

 return avc_has_perm(sid, ksid, SECCLASS_KEY, KEY__CREATE, ((void*)0));
}
