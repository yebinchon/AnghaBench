
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_sock {struct sock* sk_sk; } ;
struct sock {scalar_t__ sk_protocol; int sk_family; } ;
struct TYPE_4__ {int rcv_saddr; } ;
struct TYPE_3__ {int num; int rcv_saddr; } ;


 int ENAMETOOLONG ;
 scalar_t__ IPPROTO_UDP ;


 TYPE_2__* inet6_sk (struct sock const*) ;
 TYPE_1__* inet_sk (struct sock const*) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static int svc_one_sock_name(struct svc_sock *svsk, char *buf, int remaining)
{
 const struct sock *sk = svsk->sk_sk;
 const char *proto_name = sk->sk_protocol == IPPROTO_UDP ?
       "udp" : "tcp";
 int len;

 switch (sk->sk_family) {
 case 129:
  len = snprintf(buf, remaining, "ipv4 %s %pI4 %d\n",
    proto_name,
    &inet_sk(sk)->rcv_saddr,
    inet_sk(sk)->num);
  break;
 case 128:
  len = snprintf(buf, remaining, "ipv6 %s %pI6 %d\n",
    proto_name,
    &inet6_sk(sk)->rcv_saddr,
    inet_sk(sk)->num);
  break;
 default:
  len = snprintf(buf, remaining, "*unknown-%d*\n",
    sk->sk_family);
 }

 if (len >= remaining) {
  *buf = '\0';
  return -ENAMETOOLONG;
 }
 return len;
}
