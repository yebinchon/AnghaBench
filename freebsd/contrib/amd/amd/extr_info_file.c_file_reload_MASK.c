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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void (*) (int /*<<< orphan*/ *,char*,char*)) ; 

int
FUNC3(mnt_map *m, char *map, void (*fn) (mnt_map *, char *, char *))
{
  FILE *mapf = FUNC1(map, (time_t *) NULL);

  if (mapf) {
    int error = FUNC2(m, mapf, map, NULL, NULL, fn);
    (void) FUNC0(mapf);
    return error;
  }
  return errno;
}