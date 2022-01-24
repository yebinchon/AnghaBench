#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ cfm_dir; } ;
typedef  TYPE_1__ cf_map_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (char const*,TYPE_1__*) ; 
 int FUNC3 (char const*,TYPE_1__*) ; 
 int FUNC4 (char const*,TYPE_1__*) ; 
 int FUNC5 (char const*,TYPE_1__*) ; 
 int FUNC6 (char const*,TYPE_1__*) ; 
 int FUNC7 (char const*,TYPE_1__*) ; 
 int FUNC8 (char const*,TYPE_1__*) ; 
 int FUNC9 (char const*,TYPE_1__*) ; 
 int FUNC10 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char const*) ; 

__attribute__((used)) static int
FUNC12(const char *section, const char *key, const char *val, cf_map_t *cfm)
{
  /* ensure that val is valid */
  if (!section || section[0] == '\0' ||
      !key || key[0] == '\0' ||
      !val || val[0] == '\0' ||
      !cfm) {
    FUNC1(stderr, "conf: process_regular_option: null entries\n");
    return 1;
  }

  /* check if initializing a new map */
  if (!cfm->cfm_dir)
    cfm->cfm_dir = FUNC11(section);

  /* check for each possible field */
  if (FUNC0(key, "browsable_dirs"))
    return FUNC2(val, cfm);

  if (FUNC0(key, "map_name"))
    return FUNC4(val, cfm);

  if (FUNC0(key, "map_defaults"))
    return FUNC3(val, cfm);

  if (FUNC0(key, "map_options"))
    return FUNC5(val, cfm);

  if (FUNC0(key, "map_type"))
    return FUNC6(val, cfm);

  if (FUNC0(key, "mount_type"))
    return FUNC7(val, cfm);

  if (FUNC0(key, "search_path"))
    return FUNC8(val, cfm);

  if (FUNC0(key, "sun_map_syntax"))
    return FUNC9(val, cfm);

  if (FUNC0(key, "tag"))
    return FUNC10(val, cfm);

  FUNC1(stderr, "conf: unknown regular key \"%s\" for section \"%s\"\n",
	  key, section);
  return 1;			/* failed to match any command */
}