
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_llc {int sllc_arphrd; } ;
struct sock {int dummy; } ;
struct TYPE_3__ {int * mac; int lsap; } ;
struct llc_sock {int addr; TYPE_2__* dev; TYPE_1__ laddr; } ;
struct llc_sap {int dummy; } ;
struct TYPE_4__ {struct sockaddr_llc* dev_addr; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int EUSERS ;
 int IFHWADDRLEN ;
 int SOCK_ZAPPED ;
 TYPE_2__* dev_getfirstbyhwtype (int *,int ) ;
 int init_net ;
 int llc_sap_add_socket (struct llc_sap*,struct sock*) ;
 struct llc_sap* llc_sap_open (int ,int *) ;
 struct llc_sock* llc_sk (struct sock*) ;
 int llc_ui_autoport () ;
 int memcpy (int *,struct sockaddr_llc*,int) ;
 int sock_flag (struct sock*,int ) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static int llc_ui_autobind(struct socket *sock, struct sockaddr_llc *addr)
{
 struct sock *sk = sock->sk;
 struct llc_sock *llc = llc_sk(sk);
 struct llc_sap *sap;
 int rc = -EINVAL;

 if (!sock_flag(sk, SOCK_ZAPPED))
  goto out;
 rc = -ENODEV;
 llc->dev = dev_getfirstbyhwtype(&init_net, addr->sllc_arphrd);
 if (!llc->dev)
  goto out;
 rc = -EUSERS;
 llc->laddr.lsap = llc_ui_autoport();
 if (!llc->laddr.lsap)
  goto out;
 rc = -EBUSY;
 sap = llc_sap_open(llc->laddr.lsap, ((void*)0));
 if (!sap)
  goto out;
 memcpy(llc->laddr.mac, llc->dev->dev_addr, IFHWADDRLEN);
 memcpy(&llc->addr, addr, sizeof(llc->addr));

 llc_sap_add_socket(sap, sk);
 sock_reset_flag(sk, SOCK_ZAPPED);
 rc = 0;
out:
 return rc;
}
