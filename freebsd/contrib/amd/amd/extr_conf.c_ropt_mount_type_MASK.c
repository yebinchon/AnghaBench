#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cfm_flags; } ;
typedef  TYPE_1__ cf_map_t ;

/* Variables and functions */
 int /*<<< orphan*/  CFM_MOUNT_TYPE_AUTOFS ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  amd_use_autofs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC2(const char *val, cf_map_t *cfm)
{
  if (FUNC0(val, "autofs")) {
#ifdef HAVE_FS_AUTOFS
    cfm->cfm_flags |= CFM_MOUNT_TYPE_AUTOFS;
    amd_use_autofs++;
    return 0;
#else /* not HAVE_FS_AUTOFS */
    FUNC1(stderr, "conf: no autofs support available\n");
    return 1;
#endif /* not HAVE_FS_AUTOFS */
  } else if (FUNC0(val, "nfs")) {
    cfm->cfm_flags &= ~CFM_MOUNT_TYPE_AUTOFS;
    return 0;
  }

  FUNC1(stderr, "conf: unknown value to mount_type \"%s\"\n", val);
  return 1;			/* unknown value */
}