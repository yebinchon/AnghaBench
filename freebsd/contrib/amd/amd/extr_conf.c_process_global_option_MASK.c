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
struct _func_map {int (* func ) (char const*) ;scalar_t__ name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct _func_map* glob_functable ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(const char *key, const char *val)
{
  struct _func_map *gfp;

  /* ensure that val is valid */
  if (!val || val[0] == '\0')
    return 1;

  /*
   * search for global function.
   */
  for (gfp = glob_functable; gfp->name; gfp++)
    if (FUNC0(gfp->name, key))
      return (gfp->func)(val);

  FUNC1(stderr, "conf: unknown global key: \"%s\"\n", key);
  return 1;			/* failed to match any command */
}