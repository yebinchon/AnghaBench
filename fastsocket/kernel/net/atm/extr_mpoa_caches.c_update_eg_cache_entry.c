
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int holding_time; } ;
struct TYPE_5__ {TYPE_1__ ctrl_info; int entry_state; int tv; } ;
typedef TYPE_2__ eg_cache_entry ;


 int EGRESS_RESOLVED ;
 int do_gettimeofday (int *) ;

__attribute__((used)) static void update_eg_cache_entry(eg_cache_entry * entry, uint16_t holding_time)
{
 do_gettimeofday(&(entry->tv));
 entry->entry_state = EGRESS_RESOLVED;
 entry->ctrl_info.holding_time = holding_time;

 return;
}
