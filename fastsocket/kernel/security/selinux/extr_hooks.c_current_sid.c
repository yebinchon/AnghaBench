
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct task_security_struct {int sid; } ;
struct TYPE_2__ {struct task_security_struct* security; } ;


 TYPE_1__* current_cred () ;

__attribute__((used)) static inline u32 current_sid(void)
{
 const struct task_security_struct *tsec = current_cred()->security;

 return tsec->sid;
}
