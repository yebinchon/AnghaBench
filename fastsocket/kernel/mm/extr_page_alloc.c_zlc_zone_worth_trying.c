
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoneref {int dummy; } ;
struct zonelist {int dummy; } ;
typedef int nodemask_t ;



__attribute__((used)) static int zlc_zone_worth_trying(struct zonelist *zonelist, struct zoneref *z,
    nodemask_t *allowednodes)
{
 return 1;
}
