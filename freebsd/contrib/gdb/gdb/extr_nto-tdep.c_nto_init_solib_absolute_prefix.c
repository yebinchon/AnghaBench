
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* arch_name; } ;


 scalar_t__ BFD_ENDIAN_BIG ;
 int PATH_MAX ;
 TYPE_1__* TARGET_ARCHITECTURE ;
 scalar_t__ TARGET_BYTE_ORDER ;
 int execute_command (char*,int ) ;
 char* nto_target () ;
 int sprintf (char*,char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

void
nto_init_solib_absolute_prefix (void)
{
  char buf[PATH_MAX * 2], arch_path[PATH_MAX];
  char *nto_root, *endian;
  const char *arch;

  nto_root = nto_target ();
  if (strcmp (TARGET_ARCHITECTURE->arch_name, "i386") == 0)
    {
      arch = "x86";
      endian = "";
    }
  else if (strcmp (TARGET_ARCHITECTURE->arch_name, "rs6000") == 0
    || strcmp (TARGET_ARCHITECTURE->arch_name, "powerpc") == 0)
    {
      arch = "ppc";
      endian = "be";
    }
  else
    {
      arch = TARGET_ARCHITECTURE->arch_name;
      endian = TARGET_BYTE_ORDER == BFD_ENDIAN_BIG ? "be" : "le";
    }

  sprintf (arch_path, "%s/%s%s", nto_root, arch, endian);

  sprintf (buf, "set solib-absolute-prefix %s", arch_path);
  execute_command (buf, 0);
}
