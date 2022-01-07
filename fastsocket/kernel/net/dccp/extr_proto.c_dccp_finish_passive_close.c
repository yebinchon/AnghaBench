
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;


 int DCCP_CLOSED ;
 int DCCP_CLOSING ;


 int DCCP_RESET_CODE_CLOSED ;
 int dccp_send_close (struct sock*,int) ;
 int dccp_send_reset (struct sock*,int ) ;
 int dccp_set_state (struct sock*,int ) ;

__attribute__((used)) static void dccp_finish_passive_close(struct sock *sk)
{
 switch (sk->sk_state) {
 case 129:

  dccp_send_reset(sk, DCCP_RESET_CODE_CLOSED);
  dccp_set_state(sk, DCCP_CLOSED);
  break;
 case 128:




  dccp_send_close(sk, 1);
  dccp_set_state(sk, DCCP_CLOSING);
 }
}
