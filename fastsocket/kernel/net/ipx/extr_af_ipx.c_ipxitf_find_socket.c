
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ipx_interface {int if_sklist_lock; } ;
typedef int __be16 ;


 struct sock* __ipxitf_find_socket (struct ipx_interface*,int ) ;
 int sock_hold (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct sock *ipxitf_find_socket(struct ipx_interface *intrfc,
     __be16 port)
{
 struct sock *s;

 spin_lock_bh(&intrfc->if_sklist_lock);
 s = __ipxitf_find_socket(intrfc, port);
 if (s)
  sock_hold(s);
 spin_unlock_bh(&intrfc->if_sklist_lock);

 return s;
}
