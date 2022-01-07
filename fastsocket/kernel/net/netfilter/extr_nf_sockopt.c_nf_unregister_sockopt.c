
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_sockopt_ops {int list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_sockopt_mutex ;

void nf_unregister_sockopt(struct nf_sockopt_ops *reg)
{
 mutex_lock(&nf_sockopt_mutex);
 list_del(&reg->list);
 mutex_unlock(&nf_sockopt_mutex);
}
