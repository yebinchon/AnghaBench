
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int congested; } ;
struct port {int waiting_pkts; int wait_list; TYPE_1__ publ; struct link* congested_link; int wakeup; } ;
struct TYPE_4__ {int link_congs; } ;
struct link {TYPE_2__ stats; int waiting_ports; } ;


 int ELINKCONG ;
 int link_max_pkt (struct link*) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_port_list_lock ;
 struct port* tipc_port_lock (int) ;
 int tipc_port_unlock (struct port*) ;

__attribute__((used)) static int link_schedule_port(struct link *l_ptr, u32 origport, u32 sz)
{
 struct port *p_ptr;

 spin_lock_bh(&tipc_port_list_lock);
 p_ptr = tipc_port_lock(origport);
 if (p_ptr) {
  if (!p_ptr->wakeup)
   goto exit;
  if (!list_empty(&p_ptr->wait_list))
   goto exit;
  p_ptr->congested_link = l_ptr;
  p_ptr->publ.congested = 1;
  p_ptr->waiting_pkts = 1 + ((sz - 1) / link_max_pkt(l_ptr));
  list_add_tail(&p_ptr->wait_list, &l_ptr->waiting_ports);
  l_ptr->stats.link_congs++;
exit:
  tipc_port_unlock(p_ptr);
 }
 spin_unlock_bh(&tipc_port_list_lock);
 return -ELINKCONG;
}
