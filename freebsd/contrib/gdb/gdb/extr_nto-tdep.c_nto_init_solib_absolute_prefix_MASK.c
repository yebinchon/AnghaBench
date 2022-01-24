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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,...) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

void
FUNC4 (void)
{
  char buf[PATH_MAX * 2], arch_path[PATH_MAX];
  char *nto_root, *endian;
  const char *arch;

  nto_root = FUNC1 ();
  if (FUNC3 (TARGET_ARCHITECTURE->arch_name, "i386") == 0)
    {
      arch = "x86";
      endian = "";
    }
  else if (FUNC3 (TARGET_ARCHITECTURE->arch_name, "rs6000") == 0
	   || FUNC3 (TARGET_ARCHITECTURE->arch_name, "powerpc") == 0)
    {
      arch = "ppc";
      endian = "be";
    }
  else
    {
      arch = TARGET_ARCHITECTURE->arch_name;
      endian = TARGET_BYTE_ORDER == BFD_ENDIAN_BIG ? "be" : "le";
    }

  FUNC2 (arch_path, "%s/%s%s", nto_root, arch, endian);

  FUNC2 (buf, "set solib-absolute-prefix %s", arch_path);
  FUNC0 (buf, 0);
}