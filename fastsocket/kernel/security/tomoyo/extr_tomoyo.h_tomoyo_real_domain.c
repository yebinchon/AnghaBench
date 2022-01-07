
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_domain_info {int dummy; } ;
struct task_struct {int dummy; } ;


 int security ;
 struct tomoyo_domain_info* task_cred_xxx (struct task_struct*,int ) ;

__attribute__((used)) static inline struct tomoyo_domain_info *tomoyo_real_domain(struct task_struct
           *task)
{
 return task_cred_xxx(task, security);
}
