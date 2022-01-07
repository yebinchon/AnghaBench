
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct unix_sock {int readlock; struct unix_address* addr; } ;
struct unix_address {size_t hash; scalar_t__ len; TYPE_1__* name; int refcnt; } ;
struct socket {int type; struct sock* sk; } ;
struct sock {size_t sk_type; } ;
struct net {int dummy; } ;
struct TYPE_3__ {scalar_t__ sun_path; int sun_family; } ;


 int AF_UNIX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ __unix_find_socket_byname (struct net*,TYPE_1__*,scalar_t__,int ,size_t) ;
 int __unix_insert_socket (int *,struct sock*) ;
 int __unix_remove_socket (struct sock*) ;
 int atomic_set (int *,int) ;
 int csum_partial (TYPE_1__*,scalar_t__,int ) ;
 struct unix_address* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct net* sock_net (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ sprintf (scalar_t__,char*,int) ;
 size_t unix_hash_fold (int ) ;
 struct unix_sock* unix_sk (struct sock*) ;
 int * unix_socket_table ;
 int unix_table_lock ;
 int yield () ;

__attribute__((used)) static int unix_autobind(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct net *net = sock_net(sk);
 struct unix_sock *u = unix_sk(sk);
 static u32 ordernum = 1;
 struct unix_address *addr;
 int err;

 mutex_lock(&u->readlock);

 err = 0;
 if (u->addr)
  goto out;

 err = -ENOMEM;
 addr = kzalloc(sizeof(*addr) + sizeof(short) + 16, GFP_KERNEL);
 if (!addr)
  goto out;

 addr->name->sun_family = AF_UNIX;
 atomic_set(&addr->refcnt, 1);

retry:
 addr->len = sprintf(addr->name->sun_path+1, "%05x", ordernum) + 1 + sizeof(short);
 addr->hash = unix_hash_fold(csum_partial(addr->name, addr->len, 0));

 spin_lock(&unix_table_lock);
 ordernum = (ordernum+1)&0xFFFFF;

 if (__unix_find_socket_byname(net, addr->name, addr->len, sock->type,
          addr->hash)) {
  spin_unlock(&unix_table_lock);

  if (!(ordernum&0xFF))
   yield();
  goto retry;
 }
 addr->hash ^= sk->sk_type;

 __unix_remove_socket(sk);
 u->addr = addr;
 __unix_insert_socket(&unix_socket_table[addr->hash], sk);
 spin_unlock(&unix_table_lock);
 err = 0;

out: mutex_unlock(&u->readlock);
 return err;
}
