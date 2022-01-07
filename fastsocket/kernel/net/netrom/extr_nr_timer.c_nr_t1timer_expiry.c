
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nr_sock {int state; int n2count; int n2; } ;


 int ETIMEDOUT ;
 int NR_CONNREQ ;
 int NR_DISCREQ ;



 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int nr_disconnect (struct sock*,int ) ;
 int nr_requeue_frames (struct sock*) ;
 struct nr_sock* nr_sk (struct sock*) ;
 int nr_start_t1timer (struct sock*) ;
 int nr_write_internal (struct sock*,int ) ;

__attribute__((used)) static void nr_t1timer_expiry(unsigned long param)
{
 struct sock *sk = (struct sock *)param;
 struct nr_sock *nr = nr_sk(sk);

 bh_lock_sock(sk);
 switch (nr->state) {
 case 130:
  if (nr->n2count == nr->n2) {
   nr_disconnect(sk, ETIMEDOUT);
   bh_unlock_sock(sk);
   return;
  } else {
   nr->n2count++;
   nr_write_internal(sk, NR_CONNREQ);
  }
  break;

 case 129:
  if (nr->n2count == nr->n2) {
   nr_disconnect(sk, ETIMEDOUT);
   bh_unlock_sock(sk);
   return;
  } else {
   nr->n2count++;
   nr_write_internal(sk, NR_DISCREQ);
  }
  break;

 case 128:
  if (nr->n2count == nr->n2) {
   nr_disconnect(sk, ETIMEDOUT);
   bh_unlock_sock(sk);
   return;
  } else {
   nr->n2count++;
   nr_requeue_frames(sk);
  }
  break;
 }

 nr_start_t1timer(sk);
 bh_unlock_sock(sk);
}
