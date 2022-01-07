
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compact_control {int dummy; } ;
typedef int spinlock_t ;


 int compact_checklock_irqsave (int *,unsigned long*,int,struct compact_control*) ;

__attribute__((used)) static inline bool compact_trylock_irqsave(spinlock_t *lock,
   unsigned long *flags, struct compact_control *cc)
{
 return compact_checklock_irqsave(lock, flags, 0, cc);
}
