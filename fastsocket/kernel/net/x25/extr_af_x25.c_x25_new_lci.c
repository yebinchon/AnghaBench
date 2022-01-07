
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int dummy; } ;
struct sock {int dummy; } ;


 struct sock* __x25_find_socket (unsigned int,struct x25_neigh*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int sock_put (struct sock*) ;
 int x25_list_lock ;

__attribute__((used)) static unsigned int x25_new_lci(struct x25_neigh *nb)
{
 unsigned int lci = 1;
 struct sock *sk;

 read_lock_bh(&x25_list_lock);

 while ((sk = __x25_find_socket(lci, nb)) != ((void*)0)) {
  sock_put(sk);
  if (++lci == 4096) {
   lci = 0;
   break;
  }
 }

 read_unlock_bh(&x25_list_lock);
 return lci;
}
