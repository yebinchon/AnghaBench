
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nr_sock {int condition; } ;


 int NR_COND_ACK_PENDING ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int nr_enquiry_response (struct sock*) ;
 struct nr_sock* nr_sk (struct sock*) ;

__attribute__((used)) static void nr_t2timer_expiry(unsigned long param)
{
 struct sock *sk = (struct sock *)param;
 struct nr_sock *nr = nr_sk(sk);

 bh_lock_sock(sk);
 if (nr->condition & NR_COND_ACK_PENDING) {
  nr->condition &= ~NR_COND_ACK_PENDING;
  nr_enquiry_response(sk);
 }
 bh_unlock_sock(sk);
}
