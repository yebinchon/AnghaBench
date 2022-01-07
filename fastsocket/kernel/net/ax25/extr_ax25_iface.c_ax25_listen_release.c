
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct listen_struct {struct listen_struct* next; struct net_device* dev; int callsign; } ;
typedef int ax25_address ;


 scalar_t__ ax25cmp (int *,int *) ;
 int kfree (struct listen_struct*) ;
 struct listen_struct* listen_list ;
 int listen_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ax25_listen_release(ax25_address *callsign, struct net_device *dev)
{
 struct listen_struct *s, *listen;

 spin_lock_bh(&listen_lock);
 listen = listen_list;
 if (listen == ((void*)0)) {
  spin_unlock_bh(&listen_lock);
  return;
 }

 if (ax25cmp(&listen->callsign, callsign) == 0 && listen->dev == dev) {
  listen_list = listen->next;
  spin_unlock_bh(&listen_lock);
  kfree(listen);
  return;
 }

 while (listen != ((void*)0) && listen->next != ((void*)0)) {
  if (ax25cmp(&listen->next->callsign, callsign) == 0 && listen->next->dev == dev) {
   s = listen->next;
   listen->next = listen->next->next;
   spin_unlock_bh(&listen_lock);
   kfree(s);
   return;
  }

  listen = listen->next;
 }
 spin_unlock_bh(&listen_lock);
}
