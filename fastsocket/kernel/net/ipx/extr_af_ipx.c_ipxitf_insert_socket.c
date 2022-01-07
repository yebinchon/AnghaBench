
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct ipx_interface {int if_sklist_lock; int if_sklist; } ;
struct TYPE_2__ {struct ipx_interface* intrfc; } ;


 TYPE_1__* ipx_sk (struct sock*) ;
 int ipxitf_hold (struct ipx_interface*) ;
 int ipxitf_put (struct ipx_interface*) ;
 int sk_add_node (struct sock*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ipxitf_insert_socket(struct ipx_interface *intrfc, struct sock *sk)
{
 ipxitf_hold(intrfc);
 spin_lock_bh(&intrfc->if_sklist_lock);
 ipx_sk(sk)->intrfc = intrfc;
 sk_add_node(sk, &intrfc->if_sklist);
 spin_unlock_bh(&intrfc->if_sklist_lock);
 ipxitf_put(intrfc);
}
