
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int tipc_named_msg_event ;
typedef int tipc_named_msg_err_event ;
typedef int tipc_msg_event ;
typedef int tipc_msg_err_event ;
typedef int tipc_continue_event ;
typedef int tipc_conn_shutdown_event ;
typedef int tipc_conn_msg_event ;
struct user_port {int uport_list; int continue_event_cb; int conn_msg_cb; int named_msg_cb; int msg_cb; int conn_err_cb; int named_err_cb; int err_cb; int ref; void* usr_handle; int user_ref; } ;
struct TYPE_2__ {int ref; } ;
struct port {TYPE_1__ publ; struct user_port* user_port; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct user_port*) ;
 struct user_port* kmalloc (int,int ) ;
 int port_dispatcher ;
 int port_wakeup ;
 scalar_t__ tipc_createport_raw (int *,int ,int ,unsigned int) ;
 int tipc_port_unlock (struct port*) ;
 int tipc_reg_add_port (struct user_port*) ;
 int warn (char*) ;

int tipc_createport(u32 user_ref,
      void *usr_handle,
      unsigned int importance,
      tipc_msg_err_event error_cb,
      tipc_named_msg_err_event named_error_cb,
      tipc_conn_shutdown_event conn_error_cb,
      tipc_msg_event msg_cb,
      tipc_named_msg_event named_msg_cb,
      tipc_conn_msg_event conn_msg_cb,
      tipc_continue_event continue_event_cb,
      u32 *portref)
{
 struct user_port *up_ptr;
 struct port *p_ptr;

 up_ptr = kmalloc(sizeof(*up_ptr), GFP_ATOMIC);
 if (!up_ptr) {
  warn("Port creation failed, no memory\n");
  return -ENOMEM;
 }
 p_ptr = (struct port *)tipc_createport_raw(((void*)0), port_dispatcher,
         port_wakeup, importance);
 if (!p_ptr) {
  kfree(up_ptr);
  return -ENOMEM;
 }

 p_ptr->user_port = up_ptr;
 up_ptr->user_ref = user_ref;
 up_ptr->usr_handle = usr_handle;
 up_ptr->ref = p_ptr->publ.ref;
 up_ptr->err_cb = error_cb;
 up_ptr->named_err_cb = named_error_cb;
 up_ptr->conn_err_cb = conn_error_cb;
 up_ptr->msg_cb = msg_cb;
 up_ptr->named_msg_cb = named_msg_cb;
 up_ptr->conn_msg_cb = conn_msg_cb;
 up_ptr->continue_event_cb = continue_event_cb;
 INIT_LIST_HEAD(&up_ptr->uport_list);
 tipc_reg_add_port(up_ptr);
 *portref = p_ptr->publ.ref;
 tipc_port_unlock(p_ptr);
 return 0;
}
