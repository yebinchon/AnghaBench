
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct link* buf; } ;
struct link {int timer; int owner; TYPE_1__ print_buf; int link_list; } ;


 scalar_t__ LINK_LOG_BUF_SIZE ;
 int dbg (char*) ;
 int err (char*) ;
 int k_cancel_timer (int *) ;
 int k_term_timer (int *) ;
 int kfree (struct link*) ;
 int list_del_init (int *) ;
 int tipc_link_reset (struct link*) ;
 int tipc_link_stop (struct link*) ;
 int tipc_node_detach_link (int ,struct link*) ;
 int tipc_node_lock (int ) ;
 int tipc_node_unlock (int ) ;

void tipc_link_delete(struct link *l_ptr)
{
 if (!l_ptr) {
  err("Attempt to delete non-existent link\n");
  return;
 }

 dbg("tipc_link_delete()\n");

 k_cancel_timer(&l_ptr->timer);

 tipc_node_lock(l_ptr->owner);
 tipc_link_reset(l_ptr);
 tipc_node_detach_link(l_ptr->owner, l_ptr);
 tipc_link_stop(l_ptr);
 list_del_init(&l_ptr->link_list);
 if (LINK_LOG_BUF_SIZE)
  kfree(l_ptr->print_buf.buf);
 tipc_node_unlock(l_ptr->owner);
 k_term_timer(&l_ptr->timer);
 kfree(l_ptr);
}
