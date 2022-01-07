
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * buf; } ;
struct TYPE_5__ {TYPE_1__ print_buf; } ;


 scalar_t__ BCLINK_LOG_BUF_SIZE ;
 int bc_lock ;
 int * bcbearer ;
 TYPE_2__* bcl ;
 int * bclink ;
 int kfree (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_link_stop (TYPE_2__*) ;

void tipc_bclink_stop(void)
{
 spin_lock_bh(&bc_lock);
 if (bcbearer) {
  tipc_link_stop(bcl);
  if (BCLINK_LOG_BUF_SIZE)
   kfree(bcl->print_buf.buf);
  bcl = ((void*)0);
  kfree(bclink);
  bclink = ((void*)0);
  kfree(bcbearer);
  bcbearer = ((void*)0);
 }
 spin_unlock_bh(&bc_lock);
}
