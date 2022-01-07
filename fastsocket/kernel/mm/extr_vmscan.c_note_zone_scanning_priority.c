
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int prev_priority; } ;



__attribute__((used)) static inline void note_zone_scanning_priority(struct zone *zone, int priority)
{
 if (priority < zone->prev_priority)
  zone->prev_priority = priority;
}
