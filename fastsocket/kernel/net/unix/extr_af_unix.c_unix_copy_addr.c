
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unix_sock {TYPE_1__* addr; } ;
struct sock {int dummy; } ;
struct msghdr {int msg_name; int msg_namelen; } ;
struct TYPE_2__ {int len; int name; } ;


 int memcpy (int ,int ,int ) ;
 struct unix_sock* unix_sk (struct sock*) ;

__attribute__((used)) static void unix_copy_addr(struct msghdr *msg, struct sock *sk)
{
 struct unix_sock *u = unix_sk(sk);

 msg->msg_namelen = 0;
 if (u->addr) {
  msg->msg_namelen = u->addr->len;
  memcpy(msg->msg_name, u->addr->name, u->addr->len);
 }
}
