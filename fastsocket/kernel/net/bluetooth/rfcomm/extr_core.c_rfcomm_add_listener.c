
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_l2 {scalar_t__ l2_cid; int l2_psm; int l2_family; int l2_bdaddr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct rfcomm_session {int dummy; } ;
typedef int bdaddr_t ;
typedef int addr ;
struct TYPE_2__ {int imtu; } ;


 int AF_BLUETOOTH ;
 int BT_ERR (char*,int) ;
 int BT_LISTEN ;
 int RFCOMM_PSM ;
 int bacpy (int *,int *) ;
 int cpu_to_le16 (int ) ;
 int kernel_bind (struct socket*,struct sockaddr*,int) ;
 int kernel_listen (struct socket*,int) ;
 int l2cap_mtu ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int rfcomm_l2sock_create (struct socket**) ;
 struct rfcomm_session* rfcomm_session_add (struct socket*,int ) ;
 int rfcomm_session_hold (struct rfcomm_session*) ;
 int sock_release (struct socket*) ;

__attribute__((used)) static int rfcomm_add_listener(bdaddr_t *ba)
{
 struct sockaddr_l2 addr;
 struct socket *sock;
 struct sock *sk;
 struct rfcomm_session *s;
 int err = 0;


 err = rfcomm_l2sock_create(&sock);
 if (err < 0) {
  BT_ERR("Create socket failed %d", err);
  return err;
 }


 bacpy(&addr.l2_bdaddr, ba);
 addr.l2_family = AF_BLUETOOTH;
 addr.l2_psm = cpu_to_le16(RFCOMM_PSM);
 addr.l2_cid = 0;
 err = kernel_bind(sock, (struct sockaddr *) &addr, sizeof(addr));
 if (err < 0) {
  BT_ERR("Bind failed %d", err);
  goto failed;
 }


 sk = sock->sk;
 lock_sock(sk);
 l2cap_pi(sk)->imtu = l2cap_mtu;
 release_sock(sk);


 err = kernel_listen(sock, 10);
 if (err) {
  BT_ERR("Listen failed %d", err);
  goto failed;
 }


 s = rfcomm_session_add(sock, BT_LISTEN);
 if (!s)
  goto failed;

 rfcomm_session_hold(s);
 return 0;
failed:
 sock_release(sock);
 return err;
}
