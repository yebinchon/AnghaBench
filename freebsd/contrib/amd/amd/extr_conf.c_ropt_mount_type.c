
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cfm_flags; } ;
typedef TYPE_1__ cf_map_t ;


 int CFM_MOUNT_TYPE_AUTOFS ;
 scalar_t__ STREQ (char const*,char*) ;
 int amd_use_autofs ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static int
ropt_mount_type(const char *val, cf_map_t *cfm)
{
  if (STREQ(val, "autofs")) {





    fprintf(stderr, "conf: no autofs support available\n");
    return 1;

  } else if (STREQ(val, "nfs")) {
    cfm->cfm_flags &= ~CFM_MOUNT_TYPE_AUTOFS;
    return 0;
  }

  fprintf(stderr, "conf: unknown value to mount_type \"%s\"\n", val);
  return 1;
}
