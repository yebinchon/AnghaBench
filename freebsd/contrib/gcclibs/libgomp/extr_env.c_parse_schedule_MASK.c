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

/* Variables and functions */
 int /*<<< orphan*/  GFS_DYNAMIC ; 
 int /*<<< orphan*/  GFS_GUIDED ; 
 int /*<<< orphan*/  GFS_STATIC ; 
 scalar_t__ errno ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned long gomp_run_sched_chunk ; 
 int /*<<< orphan*/  gomp_run_sched_var ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 unsigned long FUNC4 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  char *env, *end;
  unsigned long value;

  env = FUNC0 ("OMP_SCHEDULE");
  if (env == NULL)
    return;

  while (FUNC2 ((unsigned char) *env))
    ++env;
  if (FUNC3 (env, "static", 6) == 0)
    {
      gomp_run_sched_var = GFS_STATIC;
      env += 6;
    }
  else if (FUNC3 (env, "dynamic", 7) == 0)
    {
      gomp_run_sched_var = GFS_DYNAMIC;
      env += 7;
    }
  else if (FUNC3 (env, "guided", 6) == 0)
    {
      gomp_run_sched_var = GFS_GUIDED;
      env += 6;
    }
  else
    goto unknown;

  while (FUNC2 ((unsigned char) *env))
    ++env;
  if (*env == '\0')
    return;
  if (*env++ != ',')
    goto unknown;
  while (FUNC2 ((unsigned char) *env))
    ++env;
  if (*env == '\0')
    goto invalid;

  errno = 0;
  value = FUNC4 (env, &end, 10);
  if (errno)
    goto invalid;

  while (FUNC2 ((unsigned char) *end))
    ++end;
  if (*end != '\0')
    goto invalid;

  gomp_run_sched_chunk = value;
  return;

 unknown:
  FUNC1 ("Unknown value for environment variable OMP_SCHEDULE");
  return;

 invalid:
  FUNC1 ("Invalid value for chunk size in "
	      "environment variable OMP_SCHEDULE");
  return;
}