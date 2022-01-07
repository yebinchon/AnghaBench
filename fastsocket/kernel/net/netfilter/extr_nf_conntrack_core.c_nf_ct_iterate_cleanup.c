
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int timeout; } ;
struct net {int dummy; } ;


 int death_by_timeout (unsigned long) ;
 scalar_t__ del_timer (int *) ;
 struct nf_conn* get_next_corpse (struct net*,int (*) (struct nf_conn*,void*),void*,unsigned int*) ;
 int nf_ct_put (struct nf_conn*) ;

void nf_ct_iterate_cleanup(struct net *net,
      int (*iter)(struct nf_conn *i, void *data),
      void *data)
{
 struct nf_conn *ct;
 unsigned int bucket = 0;

 while ((ct = get_next_corpse(net, iter, data, &bucket)) != ((void*)0)) {

  if (del_timer(&ct->timeout))
   death_by_timeout((unsigned long)ct);


  nf_ct_put(ct);
 }
}
