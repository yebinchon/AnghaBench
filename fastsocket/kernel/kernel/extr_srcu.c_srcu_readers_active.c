
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int dummy; } ;


 int srcu_readers_active_idx (struct srcu_struct*,int) ;

__attribute__((used)) static int srcu_readers_active(struct srcu_struct *sp)
{
 return srcu_readers_active_idx(sp, 0) + srcu_readers_active_idx(sp, 1);
}
