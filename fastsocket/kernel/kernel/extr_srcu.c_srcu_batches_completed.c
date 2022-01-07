
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {long completed; } ;



long srcu_batches_completed(struct srcu_struct *sp)
{
 return sp->completed;
}
