
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * tail; int head; } ;
struct sock {size_t sk_family; int sk_userlocks; TYPE_3__* sk_prot; int * sk_sleep; int sk_refcnt; scalar_t__ sk_priority; scalar_t__ sk_err; int * sk_destruct; struct sk_filter* sk_filter; int sk_error_queue; int * sk_send_head; scalar_t__ sk_forward_alloc; scalar_t__ sk_wmem_queued; int * sk_dst_cache; int sk_callback_lock; int sk_dst_lock; int sk_async_wait_queue; int sk_write_queue; int sk_receive_queue; int sk_omem_alloc; int sk_wmem_alloc; int sk_rmem_alloc; TYPE_1__ sk_backlog; int sk_node; } ;
struct sk_filter {int dummy; } ;
typedef int gfp_t ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_8__ {TYPE_2__ sk_backlog; } ;
struct TYPE_7__ {scalar_t__ sockets_allocated; } ;


 int SOCK_BINDPORT_LOCK ;
 int SOCK_DONE ;
 int SOCK_TIMESTAMP ;
 int SOCK_TIMESTAMPING_RX_SOFTWARE ;
 scalar_t__ af_callback_keys ;
 int * af_family_clock_key_strings ;
 int atomic_set (int *,int) ;
 int bh_lock_sock (struct sock*) ;
 int get_net (int ) ;
 int lockdep_set_class_and_name (int *,scalar_t__,int ) ;
 int net_enable_timestamp () ;
 int percpu_counter_inc (scalar_t__) ;
 int rwlock_init (int *) ;
 TYPE_4__* sk_extended (struct sock*) ;
 int sk_filter_charge (struct sock*,struct sk_filter*) ;
 int sk_free (struct sock*) ;
 int sk_node_init (int *) ;
 struct sock* sk_prot_alloc (TYPE_3__*,int const,size_t) ;
 int sk_refcnt_debug_inc (struct sock*) ;
 int sk_set_socket (struct sock*,int *) ;
 int skb_queue_head_init (int *) ;
 int smp_wmb () ;
 int sock_copy (struct sock*,struct sock const*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_lock_init (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;
 scalar_t__ unlikely (int ) ;
 int xfrm_sk_clone_policy (struct sock*) ;

struct sock *sk_clone(const struct sock *sk, const gfp_t priority)
{
 struct sock *newsk;

 newsk = sk_prot_alloc(sk->sk_prot, priority, sk->sk_family);
 if (newsk != ((void*)0)) {
  struct sk_filter *filter;

  sock_copy(newsk, sk);


  get_net(sock_net(newsk));
  sk_node_init(&newsk->sk_node);
  sock_lock_init(newsk);
  bh_lock_sock(newsk);
  newsk->sk_backlog.head = newsk->sk_backlog.tail = ((void*)0);
  sk_extended(newsk)->sk_backlog.len = 0;

  atomic_set(&newsk->sk_rmem_alloc, 0);



  atomic_set(&newsk->sk_wmem_alloc, 1);
  atomic_set(&newsk->sk_omem_alloc, 0);
  skb_queue_head_init(&newsk->sk_receive_queue);
  skb_queue_head_init(&newsk->sk_write_queue);




  rwlock_init(&newsk->sk_dst_lock);
  rwlock_init(&newsk->sk_callback_lock);
  lockdep_set_class_and_name(&newsk->sk_callback_lock,
    af_callback_keys + newsk->sk_family,
    af_family_clock_key_strings[newsk->sk_family]);

  newsk->sk_dst_cache = ((void*)0);
  newsk->sk_wmem_queued = 0;
  newsk->sk_forward_alloc = 0;
  newsk->sk_send_head = ((void*)0);
  newsk->sk_userlocks = sk->sk_userlocks & ~SOCK_BINDPORT_LOCK;

  sock_reset_flag(newsk, SOCK_DONE);
  skb_queue_head_init(&newsk->sk_error_queue);

  filter = newsk->sk_filter;
  if (filter != ((void*)0))
   sk_filter_charge(newsk, filter);

  if (unlikely(xfrm_sk_clone_policy(newsk))) {


   newsk->sk_destruct = ((void*)0);
   sk_free(newsk);
   newsk = ((void*)0);
   goto out;
  }

  newsk->sk_err = 0;
  newsk->sk_priority = 0;




  smp_wmb();
  atomic_set(&newsk->sk_refcnt, 2);
  sk_refcnt_debug_inc(newsk);
  sk_set_socket(newsk, ((void*)0));
  newsk->sk_sleep = ((void*)0);

  if (newsk->sk_prot->sockets_allocated)
   percpu_counter_inc(newsk->sk_prot->sockets_allocated);

  if (sock_flag(newsk, SOCK_TIMESTAMP) ||
      sock_flag(newsk, SOCK_TIMESTAMPING_RX_SOFTWARE))
   net_enable_timestamp();
 }
out:
 return newsk;
}
