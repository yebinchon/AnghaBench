
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long target_pages; scalar_t__ balloon_high; scalar_t__ balloon_low; scalar_t__ current_pages; } ;


 TYPE_1__ balloon_stats ;
 unsigned long min (unsigned long,scalar_t__) ;

__attribute__((used)) static unsigned long current_target(void)
{
 unsigned long target = balloon_stats.target_pages;

 target = min(target,
       balloon_stats.current_pages +
       balloon_stats.balloon_low +
       balloon_stats.balloon_high);

 return target;
}
