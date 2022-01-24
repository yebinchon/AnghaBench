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
struct stat {int /*<<< orphan*/  st_mtime; } ;
typedef  int /*<<< orphan*/  mnt_map ;
typedef  int /*<<< orphan*/  dbfilename ;
typedef  int /*<<< orphan*/  DBM ;

/* Variables and functions */
 int /*<<< orphan*/  DBM_SUFFIX ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

int
FUNC8(mnt_map *m, char *map, time_t *tp)
{
  DBM *db;

  db = FUNC2(map, O_RDONLY, 0);
  if (db) {
    struct stat stb;
    int error;
#ifdef DBM_SUFFIX
    char dbfilename[256];

    xstrlcpy(dbfilename, map, sizeof(dbfilename));
    xstrlcat(dbfilename, DBM_SUFFIX, sizeof(dbfilename));
    error = stat(dbfilename, &stb);
#else /* not DBM_SUFFIX */
    error = FUNC4(FUNC3(db), &stb);
#endif /* not DBM_SUFFIX */
    if (error < 0)
      *tp = FUNC0(NULL);
    else
      *tp = stb.st_mtime;
    FUNC1(db);
    return 0;
  }
  return errno;
}