
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_fprog {int len; int * filter; } ;
struct sock_filter {int dummy; } ;
struct sock {int sk_filter; } ;
struct sk_filter {int len; int insns; int refcnt; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 scalar_t__ copy_from_user (int ,int *,unsigned int) ;
 int rcu_assign_pointer (int ,struct sk_filter*) ;
 struct sk_filter* rcu_dereference (int ) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 int sk_chk_filter (int ,int) ;
 int sk_filter_delayed_uncharge (struct sock*,struct sk_filter*) ;
 int sk_filter_uncharge (struct sock*,struct sk_filter*) ;
 int sock_kfree_s (struct sock*,struct sk_filter*,unsigned int) ;
 struct sk_filter* sock_kmalloc (struct sock*,unsigned int,int ) ;

int sk_attach_filter(struct sock_fprog *fprog, struct sock *sk)
{
 struct sk_filter *fp, *old_fp;
 unsigned int fsize = sizeof(struct sock_filter) * fprog->len;
 int err;


 if (fprog->filter == ((void*)0))
  return -EINVAL;

 fp = sock_kmalloc(sk, fsize+sizeof(*fp), GFP_KERNEL);
 if (!fp)
  return -ENOMEM;
 if (copy_from_user(fp->insns, fprog->filter, fsize)) {
  sock_kfree_s(sk, fp, fsize+sizeof(*fp));
  return -EFAULT;
 }

 atomic_set(&fp->refcnt, 1);
 fp->len = fprog->len;

 err = sk_chk_filter(fp->insns, fp->len);
 if (err) {
  sk_filter_uncharge(sk, fp);
  return err;
 }

 rcu_read_lock_bh();
 old_fp = rcu_dereference(sk->sk_filter);
 rcu_assign_pointer(sk->sk_filter, fp);
 rcu_read_unlock_bh();

 if (old_fp)
  sk_filter_delayed_uncharge(sk, old_fp);
 return 0;
}
