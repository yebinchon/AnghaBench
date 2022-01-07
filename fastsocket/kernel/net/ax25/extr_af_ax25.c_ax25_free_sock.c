
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int ax25_cb_put (int ) ;
 int ax25_sk (struct sock*) ;

__attribute__((used)) static void ax25_free_sock(struct sock *sk)
{
 ax25_cb_put(ax25_sk(sk));
}
