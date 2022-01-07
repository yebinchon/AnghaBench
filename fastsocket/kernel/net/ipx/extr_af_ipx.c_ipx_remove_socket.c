
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct ipx_interface {int if_sklist_lock; } ;
struct TYPE_2__ {struct ipx_interface* intrfc; } ;


 TYPE_1__* ipx_sk (struct sock*) ;
 int ipxitf_hold (struct ipx_interface*) ;
 int ipxitf_put (struct ipx_interface*) ;
 int sk_del_node_init (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ipx_remove_socket(struct sock *sk)
{

 struct ipx_interface *intrfc = ipx_sk(sk)->intrfc;

 if (!intrfc)
  goto out;

 ipxitf_hold(intrfc);
 spin_lock_bh(&intrfc->if_sklist_lock);
 sk_del_node_init(sk);
 spin_unlock_bh(&intrfc->if_sklist_lock);
 ipxitf_put(intrfc);
out:
 return;
}
