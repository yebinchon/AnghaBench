
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_client_data ;


 int INF_QUIT_REQ ;
 int inferior_event_handler (int ,int ) ;

void
inferior_event_handler_wrapper (gdb_client_data client_data)
{
  inferior_event_handler (INF_QUIT_REQ, client_data);
}
