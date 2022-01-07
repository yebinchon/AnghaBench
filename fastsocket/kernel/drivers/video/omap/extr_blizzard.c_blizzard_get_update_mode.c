
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omapfb_update_mode { ____Placeholder_omapfb_update_mode } omapfb_update_mode ;
struct TYPE_2__ {int update_mode; } ;


 TYPE_1__ blizzard ;

__attribute__((used)) static enum omapfb_update_mode blizzard_get_update_mode(void)
{
 return blizzard.update_mode;
}
