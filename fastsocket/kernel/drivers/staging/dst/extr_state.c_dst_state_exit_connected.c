
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_6__ {int addr; } ;
struct dst_state {TYPE_2__ ctl; TYPE_3__* socket; } ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* shutdown ) (TYPE_3__*,int) ;} ;


 int dst_dump_addr (TYPE_3__*,struct sockaddr*,char*) ;
 int dst_poll_exit (struct dst_state*) ;
 int dst_state_socket_release (struct dst_state*) ;
 int stub1 (TYPE_3__*,int) ;

void dst_state_exit_connected(struct dst_state *st)
{
 if (st->socket) {
  dst_poll_exit(st);
  st->socket->ops->shutdown(st->socket, 2);

  dst_dump_addr(st->socket, (struct sockaddr *)&st->ctl.addr,
    "Disconnected peer");
  dst_state_socket_release(st);
 }
}
