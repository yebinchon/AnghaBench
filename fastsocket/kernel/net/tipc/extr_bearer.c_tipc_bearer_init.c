
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media {int dummy; } ;
struct bearer {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int MAX_BEARERS ;
 int MAX_MEDIA ;
 int * kcalloc (int ,int,int ) ;
 int kfree (int *) ;
 int * media_list ;
 int * tipc_bearers ;
 int tipc_net_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int tipc_bearer_init(void)
{
 int res;

 write_lock_bh(&tipc_net_lock);
 tipc_bearers = kcalloc(MAX_BEARERS, sizeof(struct bearer), GFP_ATOMIC);
 media_list = kcalloc(MAX_MEDIA, sizeof(struct media), GFP_ATOMIC);
 if (tipc_bearers && media_list) {
  res = 0;
 } else {
  kfree(tipc_bearers);
  kfree(media_list);
  tipc_bearers = ((void*)0);
  media_list = ((void*)0);
  res = -ENOMEM;
 }
 write_unlock_bh(&tipc_net_lock);
 return res;
}
