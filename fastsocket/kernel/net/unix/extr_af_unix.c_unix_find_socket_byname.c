
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int dummy; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;


 struct sock* __unix_find_socket_byname (struct net*,struct sockaddr_un*,int,int,unsigned int) ;
 int sock_hold (struct sock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unix_table_lock ;

__attribute__((used)) static inline struct sock *unix_find_socket_byname(struct net *net,
         struct sockaddr_un *sunname,
         int len, int type,
         unsigned hash)
{
 struct sock *s;

 spin_lock(&unix_table_lock);
 s = __unix_find_socket_byname(net, sunname, len, type, hash);
 if (s)
  sock_hold(s);
 spin_unlock(&unix_table_lock);
 return s;
}
