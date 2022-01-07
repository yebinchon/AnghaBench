
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_write_space; int sk_data_ready; int sk_error_report; } ;
struct ncp_server {int timeout_tm; int write_space; int data_ready; int error_report; TYPE_1__* ncp_sock; } ;
struct TYPE_2__ {struct sock* sk; } ;


 int del_timer_sync (int *) ;
 int flush_scheduled_work () ;

__attribute__((used)) static void ncp_stop_tasks(struct ncp_server *server) {
 struct sock* sk = server->ncp_sock->sk;

 sk->sk_error_report = server->error_report;
 sk->sk_data_ready = server->data_ready;
 sk->sk_write_space = server->write_space;
 del_timer_sync(&server->timeout_tm);
 flush_scheduled_work();
}
