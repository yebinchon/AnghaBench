
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct listen_struct {struct net_device* dev; int callsign; struct listen_struct* next; } ;
typedef int ax25_address ;


 scalar_t__ ax25cmp (int *,int *) ;
 struct listen_struct* listen_list ;
 int listen_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ax25_listen_mine(ax25_address *callsign, struct net_device *dev)
{
 struct listen_struct *listen;

 spin_lock_bh(&listen_lock);
 for (listen = listen_list; listen != ((void*)0); listen = listen->next)
  if (ax25cmp(&listen->callsign, callsign) == 0 &&
      (listen->dev == dev || listen->dev == ((void*)0))) {
   spin_unlock_bh(&listen_lock);
   return 1;
 }
 spin_unlock_bh(&listen_lock);

 return 0;
}
