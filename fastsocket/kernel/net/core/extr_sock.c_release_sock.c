
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int slock; int wq; scalar_t__ owned; int dep_map; } ;
struct TYPE_4__ {scalar_t__ tail; } ;
struct sock {TYPE_2__ sk_lock; TYPE_3__* sk_prot; TYPE_1__ sk_backlog; } ;
struct TYPE_6__ {int (* release_cb ) (struct sock*) ;} ;


 int RHEL_PROTO_HAS_RELEASE_CB ;
 int _RET_IP_ ;
 int __release_sock (struct sock*) ;
 int mutex_release (int *,int,int ) ;
 scalar_t__ proto_has_rhel_ext (TYPE_3__*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct sock*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

void release_sock(struct sock *sk)
{



 mutex_release(&sk->sk_lock.dep_map, 1, _RET_IP_);

 spin_lock_bh(&sk->sk_lock.slock);
 if (sk->sk_backlog.tail)
  __release_sock(sk);

 if (proto_has_rhel_ext(sk->sk_prot, RHEL_PROTO_HAS_RELEASE_CB) &&
     sk->sk_prot->release_cb)
  sk->sk_prot->release_cb(sk);

 sk->sk_lock.owned = 0;
 if (waitqueue_active(&sk->sk_lock.wq))
  wake_up(&sk->sk_lock.wq);
 spin_unlock_bh(&sk->sk_lock.slock);
}
