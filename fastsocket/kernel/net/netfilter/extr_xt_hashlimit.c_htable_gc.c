
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_3__ {int gc_interval; } ;
struct xt_hashlimit_htable {TYPE_2__ timer; TYPE_1__ cfg; } ;


 int add_timer (TYPE_2__*) ;
 int htable_selective_cleanup (struct xt_hashlimit_htable*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int select_gc ;

__attribute__((used)) static void htable_gc(unsigned long htlong)
{
 struct xt_hashlimit_htable *ht = (struct xt_hashlimit_htable *)htlong;

 htable_selective_cleanup(ht, select_gc);


 ht->timer.expires = jiffies + msecs_to_jiffies(ht->cfg.gc_interval);
 add_timer(&ht->timer);
}
