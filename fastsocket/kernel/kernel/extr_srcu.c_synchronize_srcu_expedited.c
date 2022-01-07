
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int dummy; } ;


 int __synchronize_srcu (struct srcu_struct*,int ) ;
 int synchronize_sched_expedited ;

void synchronize_srcu_expedited(struct srcu_struct *sp)
{
 __synchronize_srcu(sp, synchronize_sched_expedited);
}
