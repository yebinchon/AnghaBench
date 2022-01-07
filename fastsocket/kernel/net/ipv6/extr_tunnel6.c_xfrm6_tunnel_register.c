
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm6_tunnel {int priority; struct xfrm6_tunnel* next; } ;


 unsigned short AF_INET6 ;
 int EEXIST ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct xfrm6_tunnel* tunnel46_handlers ;
 struct xfrm6_tunnel* tunnel6_handlers ;
 int tunnel6_mutex ;

int xfrm6_tunnel_register(struct xfrm6_tunnel *handler, unsigned short family)
{
 struct xfrm6_tunnel **pprev;
 int ret = -EEXIST;
 int priority = handler->priority;

 mutex_lock(&tunnel6_mutex);

 for (pprev = (family == AF_INET6) ? &tunnel6_handlers : &tunnel46_handlers;
      *pprev; pprev = &(*pprev)->next) {
  if ((*pprev)->priority > priority)
   break;
  if ((*pprev)->priority == priority)
   goto err;
 }

 handler->next = *pprev;
 *pprev = handler;

 ret = 0;

err:
 mutex_unlock(&tunnel6_mutex);

 return ret;
}
