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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int errno ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char*,char*,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ logfp ; 

int
FUNC6(mnt_map *m, char *map, char *key, char **pval, time_t *tp)
{
  int mapfd, ret;

  if ((ret = FUNC2(map)) != 0) {
    return ret;
  }

  if (!key)
    return 0;

  if (logfp)
    FUNC5(logfp);
  FUNC1("exec_search \"%s\", key: \"%s\"", map, key);
  mapfd = FUNC3(map, key);

  if (mapfd >= 0) {
    if (tp)
      *tp = FUNC0(NULL);

    return FUNC4(m, mapfd, map, key, pval, tp);
  }

  return errno;
}