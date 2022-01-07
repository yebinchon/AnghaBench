
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int sighand; } ;
struct sighand_struct {int action; int count; } ;
struct TYPE_4__ {TYPE_1__* sighand; } ;
struct TYPE_3__ {int action; int count; } ;


 unsigned long CLONE_SIGHAND ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 TYPE_2__* current ;
 struct sighand_struct* kmem_cache_alloc (int ,int ) ;
 int memcpy (int ,int ,int) ;
 int rcu_assign_pointer (int ,struct sighand_struct*) ;
 int sighand_cachep ;

__attribute__((used)) static int copy_sighand(unsigned long clone_flags, struct task_struct *tsk)
{
 struct sighand_struct *sig;

 if (clone_flags & CLONE_SIGHAND) {
  atomic_inc(&current->sighand->count);
  return 0;
 }
 sig = kmem_cache_alloc(sighand_cachep, GFP_KERNEL);
 rcu_assign_pointer(tsk->sighand, sig);
 if (!sig)
  return -ENOMEM;
 atomic_set(&sig->count, 1);
 memcpy(sig->action, current->sighand->action, sizeof(sig->action));
 return 0;
}
