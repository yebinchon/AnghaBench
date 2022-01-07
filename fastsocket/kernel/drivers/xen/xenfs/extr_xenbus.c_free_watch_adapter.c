
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct watch_adapter* node; } ;
struct watch_adapter {struct watch_adapter* token; TYPE_1__ watch; } ;


 int kfree (struct watch_adapter*) ;

__attribute__((used)) static void free_watch_adapter(struct watch_adapter *watch)
{
 kfree(watch->watch.node);
 kfree(watch->token);
 kfree(watch);
}
