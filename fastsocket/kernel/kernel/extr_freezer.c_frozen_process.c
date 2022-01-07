
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;


 int PF_FROZEN ;
 int PF_NOFREEZE ;
 int clear_freeze_flag (TYPE_1__*) ;
 TYPE_1__* current ;
 int unlikely (int) ;
 int wmb () ;

__attribute__((used)) static inline void frozen_process(void)
{
 if (!unlikely(current->flags & PF_NOFREEZE)) {
  current->flags |= PF_FROZEN;
  wmb();
 }
 clear_freeze_flag(current);
}
