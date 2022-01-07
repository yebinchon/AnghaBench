
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* cfm_next; int cfm_dir; } ;
typedef TYPE_1__ cf_map_t ;


 scalar_t__ STREQ (int ,char const*) ;
 TYPE_1__* head_map ;

cf_map_t *
find_cf_map(const char *name)
{

  cf_map_t *tmp_map = head_map;

  if (!tmp_map || !name)
    return ((void*)0);

  while (tmp_map) {
    if (STREQ(tmp_map->cfm_dir, name)) {
      return tmp_map;
    }
    tmp_map = tmp_map->cfm_next;
  }
  return ((void*)0);
}
