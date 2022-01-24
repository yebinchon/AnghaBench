#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* arch_name; } ;

/* Variables and functions */
 scalar_t__ BFD_ENDIAN_BIG ; 
 int PATH_MAX ; 
 TYPE_1__* TARGET_ARCHITECTURE ; 
 scalar_t__ TARGET_BYTE_ORDER ; 
 char* FUNC0 (int) ; 
 char* FUNC1 () ; 
 int FUNC2 (char*,int,char*,unsigned int,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char const*,char*,...) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

int
FUNC6 (char *solib, unsigned o_flags, char **temp_pathname)
{
  char *buf, arch_path[PATH_MAX], *nto_root, *endian;
  const char *arch;
  char *path_fmt = "%s/lib:%s/usr/lib:%s/usr/photon/lib\
:%s/usr/photon/dll:%s/lib/dll";

  nto_root = FUNC1 ();
  if (FUNC4 (TARGET_ARCHITECTURE->arch_name, "i386") == 0)
    {
      arch = "x86";
      endian = "";
    }
  else if (FUNC4 (TARGET_ARCHITECTURE->arch_name, "rs6000") == 0
	   || FUNC4 (TARGET_ARCHITECTURE->arch_name, "powerpc") == 0)
    {
      arch = "ppc";
      endian = "be";
    }
  else
    {
      arch = TARGET_ARCHITECTURE->arch_name;
      endian = TARGET_BYTE_ORDER == BFD_ENDIAN_BIG ? "be" : "le";
    }

  FUNC3 (arch_path, "%s/%s%s", nto_root, arch, endian);

  buf = FUNC0 (FUNC5 (path_fmt) + FUNC5 (arch_path) * 5 + 1);
  FUNC3 (buf, path_fmt, arch_path, arch_path, arch_path, arch_path,
	   arch_path);

  return FUNC2 (buf, 1, solib, o_flags, 0, temp_pathname);
}