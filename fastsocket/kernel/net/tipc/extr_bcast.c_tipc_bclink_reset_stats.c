
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stats; } ;


 int ENOPROTOOPT ;
 int bc_lock ;
 TYPE_1__* bcl ;
 int memset (int *,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int tipc_bclink_reset_stats(void)
{
 if (!bcl)
  return -ENOPROTOOPT;

 spin_lock_bh(&bc_lock);
 memset(&bcl->stats, 0, sizeof(bcl->stats));
 spin_unlock_bh(&bc_lock);
 return 0;
}
