
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct connection {struct socket* sock; } ;
struct TYPE_2__ {int sk_allocation; struct connection* sk_user_data; int sk_state_change; int sk_write_space; int sk_data_ready; } ;


 int GFP_NOFS ;
 int lowcomms_data_ready ;
 int lowcomms_state_change ;
 int lowcomms_write_space ;

__attribute__((used)) static int add_sock(struct socket *sock, struct connection *con)
{
 con->sock = sock;


 con->sock->sk->sk_data_ready = lowcomms_data_ready;
 con->sock->sk->sk_write_space = lowcomms_write_space;
 con->sock->sk->sk_state_change = lowcomms_state_change;
 con->sock->sk->sk_user_data = con;
 con->sock->sk->sk_allocation = GFP_NOFS;
 return 0;
}
