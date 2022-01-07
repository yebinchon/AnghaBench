
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ sk_peer_cred; int sk_peer_pid; } ;


 scalar_t__ get_cred (scalar_t__) ;
 int get_pid (int ) ;
 int put_cred (scalar_t__) ;
 int put_pid (int ) ;
 TYPE_1__* sk_extended (struct sock*) ;

__attribute__((used)) static void copy_peercred(struct sock *sk, struct sock *peersk)
{
 put_pid(sk_extended(sk)->sk_peer_pid);
 if (sk_extended(sk)->sk_peer_cred)
  put_cred(sk_extended(sk)->sk_peer_cred);
 sk_extended(sk)->sk_peer_pid = get_pid(sk_extended(peersk)->sk_peer_pid);
 sk_extended(sk)->sk_peer_cred = get_cred(sk_extended(peersk)->sk_peer_cred);
}
