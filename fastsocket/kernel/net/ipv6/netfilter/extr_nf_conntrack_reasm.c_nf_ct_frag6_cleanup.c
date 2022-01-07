
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inet_frags_fini (int *) ;
 int nf_ct_net_ops ;
 int nf_frags ;
 int unregister_pernet_subsys (int *) ;

void nf_ct_frag6_cleanup(void)
{
 unregister_pernet_subsys(&nf_ct_net_ops);
 inet_frags_fini(&nf_frags);
}
