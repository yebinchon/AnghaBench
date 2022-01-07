
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int na_atime; } ;
struct TYPE_5__ {scalar_t__ am_timeo; int am_ttl; TYPE_1__ am_fattr; scalar_t__ am_timeo_w; } ;
typedef TYPE_2__ am_node ;


 int clocktime (int *) ;

void
new_ttl(am_node *mp)
{
  mp->am_timeo_w = 0;
  mp->am_ttl = clocktime(&mp->am_fattr.na_atime);
  mp->am_ttl += mp->am_timeo;
}
