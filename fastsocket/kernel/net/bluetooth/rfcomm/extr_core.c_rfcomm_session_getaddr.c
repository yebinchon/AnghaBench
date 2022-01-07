
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct rfcomm_session {TYPE_1__* sock; } ;
typedef int bdaddr_t ;
struct TYPE_4__ {int dst; int src; } ;
struct TYPE_3__ {struct sock* sk; } ;


 int bacpy (int *,int *) ;
 TYPE_2__* bt_sk (struct sock*) ;

void rfcomm_session_getaddr(struct rfcomm_session *s, bdaddr_t *src, bdaddr_t *dst)
{
 struct sock *sk = s->sock->sk;
 if (src)
  bacpy(src, &bt_sk(sk)->src);
 if (dst)
  bacpy(dst, &bt_sk(sk)->dst);
}
