
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct nfulnl_instance {int lock; int flags; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
nfulnl_set_flags(struct nfulnl_instance *inst, u_int16_t flags)
{
 spin_lock_bh(&inst->lock);
 inst->flags = flags;
 spin_unlock_bh(&inst->lock);

 return 0;
}
