
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct held_lock {int dummy; } ;
typedef enum lock_usage_bit { ____Placeholder_lock_usage_bit } lock_usage_bit ;


 int WARN_ON (int) ;

__attribute__((used)) static inline
int mark_lock_irq(struct task_struct *curr, struct held_lock *this,
  enum lock_usage_bit new_bit)
{
 WARN_ON(1);
 return 1;
}
