
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_2__ {int sa_data_len; } ;
struct dst_network_ctl {TYPE_1__ addr; } ;
struct dst_state {int socket; struct dst_network_ctl ctl; } ;


 int dst_dump_addr (int ,struct sockaddr*,char*) ;
 int dst_poll_init (struct dst_state*) ;
 int dst_state_socket_create (struct dst_state*) ;
 int dst_state_socket_release (struct dst_state*) ;
 int kernel_connect (int ,struct sockaddr*,int ,int ) ;

__attribute__((used)) static int dst_state_init_connected(struct dst_state *st)
{
 int err;
 struct dst_network_ctl *ctl = &st->ctl;

 err = dst_state_socket_create(st);
 if (err)
  goto err_out_exit;

 err = kernel_connect(st->socket, (struct sockaddr *)&st->ctl.addr,
   st->ctl.addr.sa_data_len, 0);
 if (err)
  goto err_out_release;

 err = dst_poll_init(st);
 if (err)
  goto err_out_release;

 dst_dump_addr(st->socket, (struct sockaddr *)&ctl->addr,
   "Connected to peer");

 return 0;

err_out_release:
 dst_state_socket_release(st);
err_out_exit:
 return err;
}
