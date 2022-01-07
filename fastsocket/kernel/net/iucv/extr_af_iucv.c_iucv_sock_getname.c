
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_iucv {int siucv_nodeid; int siucv_addr; int siucv_port; int siucv_name; int siucv_user_id; } ;
struct sockaddr {int sa_family; } ;
struct sock {int dummy; } ;
struct iucv_sock {int src_name; int src_user_id; int dst_name; int dst_user_id; } ;


 int AF_IUCV ;
 struct iucv_sock* iucv_sk (struct sock*) ;
 int memcpy (int ,int ,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int iucv_sock_getname(struct socket *sock, struct sockaddr *addr,
        int *len, int peer)
{
 struct sockaddr_iucv *siucv = (struct sockaddr_iucv *) addr;
 struct sock *sk = sock->sk;
 struct iucv_sock *iucv = iucv_sk(sk);

 addr->sa_family = AF_IUCV;
 *len = sizeof(struct sockaddr_iucv);

 if (peer) {
  memcpy(siucv->siucv_user_id, iucv->dst_user_id, 8);
  memcpy(siucv->siucv_name, iucv->dst_name, 8);
 } else {
  memcpy(siucv->siucv_user_id, iucv->src_user_id, 8);
  memcpy(siucv->siucv_name, iucv->src_name, 8);
 }
 memset(&siucv->siucv_port, 0, sizeof(siucv->siucv_port));
 memset(&siucv->siucv_addr, 0, sizeof(siucv->siucv_addr));
 memset(&siucv->siucv_nodeid, 0, sizeof(siucv->siucv_nodeid));

 return 0;
}
