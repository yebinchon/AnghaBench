
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct nfulnl_instance {int lock; int flushtimeout; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
nfulnl_set_timeout(struct nfulnl_instance *inst, u_int32_t timeout)
{
 spin_lock_bh(&inst->lock);
 inst->flushtimeout = timeout;
 spin_unlock_bh(&inst->lock);

 return 0;
}
