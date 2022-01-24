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
typedef  int /*<<< orphan*/  str ;
struct TYPE_3__ {int cfm_flags; char* cfm_type; int /*<<< orphan*/  cfm_search_path; } ;
typedef  TYPE_1__ cf_map_t ;

/* Variables and functions */
 int CFM_BROWSABLE_DIRS ; 
 int CFM_BROWSABLE_DIRS_FULL ; 
 int CFM_MOUNT_TYPE_AUTOFS ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  ROOT_MAP ; 
 char const* FUNC0 (char const*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ root_map ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

void
FUNC7(const char *dir, const char *opts, const char *map, const cf_map_t *cfm)
{
  char str[MAXPATHLEN];

  /*
   * First make sure we have a root map to talk about...
   */
  if (!root_map)
    root_map = FUNC1(ROOT_MAP, "mapdefault", NULL, NULL);

  /*
   * Then add the entry...
   */

  /*
   * Here I plug in the code to process other amd.conf options like
   * map_type, search_path, and flags (browsable_dirs, mount_type).
   */

  if (cfm) {
    if (map) {
      FUNC3(str, sizeof(str),
		"cache:=mapdefault;type:=toplvl;mount_type:=%s;fs:=\"%s\"",
		cfm->cfm_flags & CFM_MOUNT_TYPE_AUTOFS ? "autofs" : "nfs",
		FUNC0(map, cfm->cfm_search_path, cfm->cfm_type));
      if (opts && opts[0] != '\0') {
	FUNC5(str, ";", sizeof(str));
	FUNC5(str, opts, sizeof(str));
      }
      if (cfm->cfm_flags & CFM_BROWSABLE_DIRS_FULL)
	FUNC5(str, ";opts:=rw,fullybrowsable", sizeof(str));
      if (cfm->cfm_flags & CFM_BROWSABLE_DIRS)
	FUNC5(str, ";opts:=rw,browsable", sizeof(str));
      if (cfm->cfm_type) {
	FUNC5(str, ";maptype:=", sizeof(str));
	FUNC5(str, cfm->cfm_type, sizeof(str));
      }
    } else {
      FUNC6(str, opts, sizeof(str));
    }
  } else {
    if (map)
      FUNC3(str, sizeof(str),
		"cache:=mapdefault;type:=toplvl;fs:=\"%s\";%s",
		map, opts ? opts : "");
    else
      FUNC6(str, opts, sizeof(str));
  }
  FUNC2(root_map, FUNC4(dir), FUNC4(str));
}