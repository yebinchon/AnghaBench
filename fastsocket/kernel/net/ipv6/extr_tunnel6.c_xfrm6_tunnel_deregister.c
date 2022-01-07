
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm6_tunnel {struct xfrm6_tunnel* next; } ;


 unsigned short AF_INET6 ;
 int ENOENT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_net () ;
 struct xfrm6_tunnel* tunnel46_handlers ;
 struct xfrm6_tunnel* tunnel6_handlers ;
 int tunnel6_mutex ;

int xfrm6_tunnel_deregister(struct xfrm6_tunnel *handler, unsigned short family)
{
 struct xfrm6_tunnel **pprev;
 int ret = -ENOENT;

 mutex_lock(&tunnel6_mutex);

 for (pprev = (family == AF_INET6) ? &tunnel6_handlers : &tunnel46_handlers;
      *pprev; pprev = &(*pprev)->next) {
  if (*pprev == handler) {
   *pprev = handler->next;
   ret = 0;
   break;
  }
 }

 mutex_unlock(&tunnel6_mutex);

 synchronize_net();

 return ret;
}
