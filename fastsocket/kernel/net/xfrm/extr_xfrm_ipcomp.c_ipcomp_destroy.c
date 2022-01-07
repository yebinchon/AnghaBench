
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {struct ipcomp_data* data; } ;
struct ipcomp_data {int dummy; } ;


 int ipcomp_free_data (struct ipcomp_data*) ;
 int ipcomp_resource_mutex ;
 int kfree (struct ipcomp_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xfrm_state_delete_tunnel (struct xfrm_state*) ;

void ipcomp_destroy(struct xfrm_state *x)
{
 struct ipcomp_data *ipcd = x->data;
 if (!ipcd)
  return;
 xfrm_state_delete_tunnel(x);
 mutex_lock(&ipcomp_resource_mutex);
 ipcomp_free_data(ipcd);
 mutex_unlock(&ipcomp_resource_mutex);
 kfree(ipcd);
}
