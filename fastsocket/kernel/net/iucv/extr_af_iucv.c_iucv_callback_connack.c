
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_state; } ;
struct iucv_path {struct sock* private; } ;


 int IUCV_CONNECTED ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void iucv_callback_connack(struct iucv_path *path, u8 ipuser[16])
{
 struct sock *sk = path->private;

 sk->sk_state = IUCV_CONNECTED;
 sk->sk_state_change(sk);
}
