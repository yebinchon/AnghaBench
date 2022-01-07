
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_tunnel {int priority; struct xfrm_tunnel* next; } ;


 int EEXIST ;
 struct xfrm_tunnel** fam_handlers (unsigned short) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tunnel4_mutex ;

int xfrm4_tunnel_register(struct xfrm_tunnel *handler, unsigned short family)
{
 struct xfrm_tunnel **pprev;
 int ret = -EEXIST;
 int priority = handler->priority;

 mutex_lock(&tunnel4_mutex);

 for (pprev = fam_handlers(family); *pprev; pprev = &(*pprev)->next) {
  if ((*pprev)->priority > priority)
   break;
  if ((*pprev)->priority == priority)
   goto err;
 }

 handler->next = *pprev;
 *pprev = handler;

 ret = 0;

err:
 mutex_unlock(&tunnel4_mutex);

 return ret;
}
