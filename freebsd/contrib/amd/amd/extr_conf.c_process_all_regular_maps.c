
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* cfm_next; } ;
typedef TYPE_1__ cf_map_t ;


 TYPE_1__* head_map ;
 scalar_t__ process_one_regular_map (TYPE_1__*) ;

int
process_all_regular_maps(void)
{
  cf_map_t *tmp_map = head_map;





  if (!tmp_map)
    return 0;

  while (tmp_map) {
    if (process_one_regular_map(tmp_map) != 0)
      return 1;
    tmp_map = tmp_map->cfm_next;
  }
  return 0;
}
