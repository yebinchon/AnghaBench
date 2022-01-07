
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long expires; } ;
struct TYPE_4__ {TYPE_1__ unres; } ;
struct mfc6_cache {struct mfc6_cache* next; TYPE_2__ mfc_un; } ;


 int HZ ;
 int ip6mr_destroy_unres (struct mfc6_cache*) ;
 int ipmr_expire_timer ;
 unsigned long jiffies ;
 struct mfc6_cache* mfc_unres_queue ;
 int mod_timer (int *,unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void ipmr_do_expire_process(unsigned long dummy)
{
 unsigned long now = jiffies;
 unsigned long expires = 10 * HZ;
 struct mfc6_cache *c, **cp;

 cp = &mfc_unres_queue;

 while ((c = *cp) != ((void*)0)) {
  if (time_after(c->mfc_un.unres.expires, now)) {

   unsigned long interval = c->mfc_un.unres.expires - now;
   if (interval < expires)
    expires = interval;
   cp = &c->next;
   continue;
  }

  *cp = c->next;
  ip6mr_destroy_unres(c);
 }

 if (mfc_unres_queue != ((void*)0))
  mod_timer(&ipmr_expire_timer, jiffies + expires);
}
