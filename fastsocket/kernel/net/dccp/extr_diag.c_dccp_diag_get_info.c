
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct inet_diag_msg {scalar_t__ idiag_wqueue; scalar_t__ idiag_rqueue; } ;


 int dccp_get_info (struct sock*,void*) ;

__attribute__((used)) static void dccp_diag_get_info(struct sock *sk, struct inet_diag_msg *r,
          void *_info)
{
 r->idiag_rqueue = r->idiag_wqueue = 0;

 if (_info != ((void*)0))
  dccp_get_info(sk, _info);
}
