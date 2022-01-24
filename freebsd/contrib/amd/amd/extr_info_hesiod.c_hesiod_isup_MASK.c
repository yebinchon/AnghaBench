#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  mnt_map ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int
FUNC4(mnt_map *m, char *map)
{
  int error;
  char *val;
  time_t mtime;
  static int last_status = 1;	/* assume up by default */

  error = FUNC1(m, map, "/defaults", &val, &mtime);
  FUNC0("hesiod_isup(%s): %s", map, FUNC3(error));
  if (error != 0 && error != ENOENT) {
    FUNC2(XLOG_ERROR,
	 "hesiod_isup: error getting `/defaults' entry in map %s: %m", map);
    last_status = 0;
    return 0;			/* Hesiod is down */
  }
  if (last_status == 0) {	/* if was down before */
    FUNC2(XLOG_INFO, "hesiod_isup: Hesiod came back up for map %s", map);
    last_status = 1;
  }
  return 1;			/* Hesiod is up */
}