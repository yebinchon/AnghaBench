
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct frag_queue {int dummy; } ;
struct TYPE_4__ {int qsize; int secret_interval; int frag_expire; int match; int skb_free; int * destructor; int constructor; int hashfn; } ;


 int HZ ;
 int inet_frags_fini (TYPE_1__*) ;
 int inet_frags_init (TYPE_1__*) ;
 int ip6_frag_init ;
 int ip6_frag_match ;
 int nf_ct_frag6_expire ;
 int nf_ct_net_ops ;
 TYPE_1__ nf_frags ;
 int nf_hashfn ;
 int nf_skb_free ;
 int register_pernet_subsys (int *) ;

int nf_ct_frag6_init(void)
{
 int ret = 0;

 nf_frags.hashfn = nf_hashfn;
 nf_frags.constructor = ip6_frag_init;
 nf_frags.destructor = ((void*)0);
 nf_frags.skb_free = nf_skb_free;
 nf_frags.qsize = sizeof(struct frag_queue);
 nf_frags.match = ip6_frag_match;
 nf_frags.frag_expire = nf_ct_frag6_expire;
 nf_frags.secret_interval = 10 * 60 * HZ;
 inet_frags_init(&nf_frags);

 ret = register_pernet_subsys(&nf_ct_net_ops);
 if (ret)
  inet_frags_fini(&nf_frags);

 return ret;
}
