
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ navkeypressed; int use_navkeypressed; } ;
struct annotate_browser {int max_jump_sources; TYPE_1__ b; } ;


 int HE_COLORSET_MEDIUM ;
 int HE_COLORSET_NORMAL ;
 int HE_COLORSET_SELECTED ;
 int HE_COLORSET_TOP ;

__attribute__((used)) static int annotate_browser__jumps_percent_color(struct annotate_browser *browser,
       int nr, bool current)
{
 if (current && (!browser->b.use_navkeypressed || browser->b.navkeypressed))
  return HE_COLORSET_SELECTED;
 if (nr == browser->max_jump_sources)
  return HE_COLORSET_TOP;
 if (nr > 1)
  return HE_COLORSET_MEDIUM;
 return HE_COLORSET_NORMAL;
}
