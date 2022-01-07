
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct extif_timings {int dummy; } ;
struct TYPE_4__ {TYPE_1__* extif; } ;
struct TYPE_3__ {int (* set_timings ) (struct extif_timings const*) ;} ;


 TYPE_2__ blizzard ;
 int stub1 (struct extif_timings const*) ;

__attribute__((used)) static inline void set_extif_timings(const struct extif_timings *t)
{
 blizzard.extif->set_timings(t);
}
