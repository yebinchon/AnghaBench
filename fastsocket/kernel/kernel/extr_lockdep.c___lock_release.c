
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct lockdep_map {int dummy; } ;


 int check_chain_key (struct task_struct*) ;
 int check_unlock (struct task_struct*,struct lockdep_map*,unsigned long) ;
 struct task_struct* current ;
 int lock_release_nested (struct task_struct*,struct lockdep_map*,unsigned long) ;
 int lock_release_non_nested (struct task_struct*,struct lockdep_map*,unsigned long) ;

__attribute__((used)) static void
__lock_release(struct lockdep_map *lock, int nested, unsigned long ip)
{
 struct task_struct *curr = current;

 if (!check_unlock(curr, lock, ip))
  return;

 if (nested) {
  if (!lock_release_nested(curr, lock, ip))
   return;
 } else {
  if (!lock_release_non_nested(curr, lock, ip))
   return;
 }

 check_chain_key(curr);
}
