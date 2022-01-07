
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct seq_file {int dummy; } ;
struct cred {int cap_bset; int cap_effective; int cap_permitted; int cap_inheritable; } ;
typedef int kernel_cap_t ;


 struct cred* __task_cred (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int render_cap_t (struct seq_file*,char*,int *) ;

__attribute__((used)) static inline void task_cap(struct seq_file *m, struct task_struct *p)
{
 const struct cred *cred;
 kernel_cap_t cap_inheritable, cap_permitted, cap_effective, cap_bset;

 rcu_read_lock();
 cred = __task_cred(p);
 cap_inheritable = cred->cap_inheritable;
 cap_permitted = cred->cap_permitted;
 cap_effective = cred->cap_effective;
 cap_bset = cred->cap_bset;
 rcu_read_unlock();

 render_cap_t(m, "CapInh:\t", &cap_inheritable);
 render_cap_t(m, "CapPrm:\t", &cap_permitted);
 render_cap_t(m, "CapEff:\t", &cap_effective);
 render_cap_t(m, "CapBnd:\t", &cap_bset);
}
