
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_color_key {int dummy; } ;
struct TYPE_2__ {struct omapfb_color_key color_key; } ;


 TYPE_1__ dispc ;

__attribute__((used)) static int omap_dispc_get_color_key(struct omapfb_color_key *ck)
{
 *ck = dispc.color_key;
 return 0;
}
