
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* cfm_dir; int cfm_flags; char* cfm_opts; int cfm_name; int cfm_tag; } ;
typedef TYPE_1__ cf_map_t ;


 scalar_t__ STREQ (int ,scalar_t__) ;
 scalar_t__ conf_tag ;
 int fprintf (int ,char*,char*,...) ;
 int root_newmap (char*,char*,int ,TYPE_1__ const*) ;
 int stderr ;

__attribute__((used)) static int
process_one_regular_map(const cf_map_t *cfm)
{
  if (!cfm->cfm_name) {
    fprintf(stderr, "conf: map_name must be defined for map \"%s\"\n", cfm->cfm_dir);
    return 1;
  }





  if (!cfm->cfm_tag ||
      (conf_tag && STREQ(cfm->cfm_tag, conf_tag))) {




    root_newmap(cfm->cfm_dir,
  cfm->cfm_opts ? cfm->cfm_opts : "",
  cfm->cfm_name,
  cfm);
  } else {
    fprintf(stderr, "skipping map %s...\n", cfm->cfm_dir);
  }

  return 0;
}
