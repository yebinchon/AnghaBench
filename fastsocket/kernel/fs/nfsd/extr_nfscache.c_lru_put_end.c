
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_cacherep {int c_lru; int c_timestamp; } ;


 int RC_EXPIRE ;
 int cache_cleaner ;
 int jiffies ;
 int list_move_tail (int *,int *) ;
 int lru_head ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void
lru_put_end(struct svc_cacherep *rp)
{
 rp->c_timestamp = jiffies;
 list_move_tail(&rp->c_lru, &lru_head);
 schedule_delayed_work(&cache_cleaner, RC_EXPIRE);
}
