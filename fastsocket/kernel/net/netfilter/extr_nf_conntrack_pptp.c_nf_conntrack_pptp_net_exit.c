
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int nf_ct_gre_keymap_flush (struct net*) ;

__attribute__((used)) static void nf_conntrack_pptp_net_exit(struct net *net)
{
 nf_ct_gre_keymap_flush(net);
}
