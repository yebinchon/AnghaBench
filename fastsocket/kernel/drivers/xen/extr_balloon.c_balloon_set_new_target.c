
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long target_pages; } ;


 TYPE_1__ balloon_stats ;
 int balloon_worker ;
 int schedule_work (int *) ;

__attribute__((used)) static void balloon_set_new_target(unsigned long target)
{

 balloon_stats.target_pages = target;
 schedule_work(&balloon_worker);
}
