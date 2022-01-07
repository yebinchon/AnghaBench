
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int CFM_MOUNT_TYPE_AUTOFS ;
 scalar_t__ STREQ (char const*,char*) ;
 int amd_use_autofs ;
 int fprintf (int ,char*,...) ;
 TYPE_1__ gopt ;
 int stderr ;

__attribute__((used)) static int
gopt_mount_type(const char *val)
{
  if (STREQ(val, "autofs")) {





    fprintf(stderr, "conf: no autofs support available\n");
    return 1;

  } else if (STREQ(val, "nfs")) {
    gopt.flags &= ~CFM_MOUNT_TYPE_AUTOFS;
    return 0;
  }

  fprintf(stderr, "conf: unknown value to mount_type \"%s\"\n", val);
  return 1;
}
