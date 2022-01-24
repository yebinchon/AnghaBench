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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  mnt_map ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char**,int /*<<< orphan*/ *) ; 

int
FUNC3(mnt_map *m, char *map, char *key, char **pval, time_t *tp)
{
  time_t t;
  FILE *mapf = FUNC1(map, &t);

  if (mapf) {
    int error;
    if (*tp < t) {
      *tp = t;
      error = -1;
    } else {
      error = FUNC2(m, mapf, map, key, pval, NULL);
    }
    (void) FUNC0(mapf);
    return error;
  }
  return errno;
}