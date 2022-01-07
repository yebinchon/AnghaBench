
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; struct fasync_struct* fasync_list; } ;
struct sock {int sk_callback_lock; } ;
struct file {int f_lock; int f_flags; struct socket* private_data; } ;
struct fasync_struct {int fa_fd; struct fasync_struct* fa_next; int magic; struct file* fa_file; } ;


 int EINVAL ;
 int ENOMEM ;
 int FASYNC ;
 int FASYNC_MAGIC ;
 int GFP_KERNEL ;
 int kfree (struct fasync_struct*) ;
 struct fasync_struct* kmalloc (int,int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int sock_fasync(int fd, struct file *filp, int on)
{
 struct fasync_struct *fa, *fna = ((void*)0), **prev;
 struct socket *sock;
 struct sock *sk;

 if (on) {
  fna = kmalloc(sizeof(struct fasync_struct), GFP_KERNEL);
  if (fna == ((void*)0))
   return -ENOMEM;
 }

 sock = filp->private_data;

 sk = sock->sk;
 if (sk == ((void*)0)) {
  kfree(fna);
  return -EINVAL;
 }

 lock_sock(sk);

 spin_lock(&filp->f_lock);
 if (on)
  filp->f_flags |= FASYNC;
 else
  filp->f_flags &= ~FASYNC;
 spin_unlock(&filp->f_lock);

 prev = &(sock->fasync_list);

 for (fa = *prev; fa != ((void*)0); prev = &fa->fa_next, fa = *prev)
  if (fa->fa_file == filp)
   break;

 if (on) {
  if (fa != ((void*)0)) {
   write_lock_bh(&sk->sk_callback_lock);
   fa->fa_fd = fd;
   write_unlock_bh(&sk->sk_callback_lock);

   kfree(fna);
   goto out;
  }
  fna->fa_file = filp;
  fna->fa_fd = fd;
  fna->magic = FASYNC_MAGIC;
  fna->fa_next = sock->fasync_list;
  write_lock_bh(&sk->sk_callback_lock);
  sock->fasync_list = fna;
  write_unlock_bh(&sk->sk_callback_lock);
 } else {
  if (fa != ((void*)0)) {
   write_lock_bh(&sk->sk_callback_lock);
   *prev = fa->fa_next;
   write_unlock_bh(&sk->sk_callback_lock);
   kfree(fa);
  }
 }

out:
 release_sock(sock->sk);
 return 0;
}
