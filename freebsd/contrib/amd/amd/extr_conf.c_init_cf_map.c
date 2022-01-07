
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cfm_flags; int cfm_search_path; int cfm_opts; int cfm_defaults; int cfm_type; } ;
typedef TYPE_1__ cf_map_t ;
struct TYPE_5__ {int flags; int search_path; int map_options; int map_defaults; int map_type; } ;


 int CFM_BROWSABLE_DIRS ;
 int CFM_BROWSABLE_DIRS_FULL ;
 int CFM_MOUNT_TYPE_AUTOFS ;
 int CFM_SELECTORS_IN_DEFAULTS ;
 int CFM_SUN_MAP_SYNTAX ;
 TYPE_3__ gopt ;

__attribute__((used)) static void
init_cf_map(cf_map_t *cfm)
{
  if (!cfm)
    return;
  cfm->cfm_type = gopt.map_type;


  cfm->cfm_defaults = gopt.map_defaults;


  cfm->cfm_opts = gopt.map_options;


  cfm->cfm_search_path = gopt.search_path;





  cfm->cfm_flags = gopt.flags & (CFM_BROWSABLE_DIRS |
     CFM_BROWSABLE_DIRS_FULL |
     CFM_MOUNT_TYPE_AUTOFS |
     CFM_SELECTORS_IN_DEFAULTS |
     CFM_SUN_MAP_SYNTAX );
}
