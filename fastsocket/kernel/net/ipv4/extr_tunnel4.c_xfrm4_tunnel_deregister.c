
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_tunnel {struct xfrm_tunnel* next; } ;


 int ENOENT ;
 struct xfrm_tunnel** fam_handlers (unsigned short) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_net () ;
 int tunnel4_mutex ;

int xfrm4_tunnel_deregister(struct xfrm_tunnel *handler, unsigned short family)
{
 struct xfrm_tunnel **pprev;
 int ret = -ENOENT;

 mutex_lock(&tunnel4_mutex);

 for (pprev = fam_handlers(family); *pprev; pprev = &(*pprev)->next) {
  if (*pprev == handler) {
   *pprev = handler->next;
   ret = 0;
   break;
  }
 }

 mutex_unlock(&tunnel4_mutex);

 synchronize_net();

 return ret;
}
