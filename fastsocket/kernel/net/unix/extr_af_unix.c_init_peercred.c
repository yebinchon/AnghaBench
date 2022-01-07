
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ sk_peer_cred; int sk_peer_pid; } ;


 int current ;
 scalar_t__ get_current_cred () ;
 int get_pid (int ) ;
 int put_cred (scalar_t__) ;
 int put_pid (int ) ;
 TYPE_1__* sk_extended (struct sock*) ;
 int task_tgid (int ) ;

__attribute__((used)) static void init_peercred(struct sock *sk)
{
 put_pid(sk_extended(sk)->sk_peer_pid);
 if (sk_extended(sk)->sk_peer_cred)
  put_cred(sk_extended(sk)->sk_peer_cred);
 sk_extended(sk)->sk_peer_pid = get_pid(task_tgid(current));
 sk_extended(sk)->sk_peer_cred = get_current_cred();
}
