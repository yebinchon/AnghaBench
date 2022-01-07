
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct raw6_sock {int checksum; int offset; } ;
struct TYPE_2__ {int num; } ;




 TYPE_1__* inet_sk (struct sock*) ;
 struct raw6_sock* raw6_sk (struct sock*) ;

__attribute__((used)) static int rawv6_init_sk(struct sock *sk)
{
 struct raw6_sock *rp = raw6_sk(sk);

 switch (inet_sk(sk)->num) {
 case 129:
  rp->checksum = 1;
  rp->offset = 2;
  break;
 case 128:
  rp->checksum = 1;
  rp->offset = 4;
  break;
 default:
  break;
 }
 return(0);
}
