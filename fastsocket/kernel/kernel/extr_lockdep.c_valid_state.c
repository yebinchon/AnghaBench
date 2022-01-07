
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct held_lock {int dummy; } ;
typedef enum lock_usage_bit { ____Placeholder_lock_usage_bit } lock_usage_bit ;
struct TYPE_2__ {int usage_mask; } ;


 TYPE_1__* hlock_class (struct held_lock*) ;
 int print_usage_bug (struct task_struct*,struct held_lock*,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int
valid_state(struct task_struct *curr, struct held_lock *this,
     enum lock_usage_bit new_bit, enum lock_usage_bit bad_bit)
{
 if (unlikely(hlock_class(this)->usage_mask & (1 << bad_bit)))
  return print_usage_bug(curr, this, bad_bit, new_bit);
 return 1;
}
