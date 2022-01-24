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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* mcset_mc_basename ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*,char*,char const*) ; 
 size_t FUNC5 (char const*) ; 
 char* FUNC6 (size_t) ; 

__attribute__((used)) static FILE *
FUNC7 (const char *path, const char *ext)
{
  FILE *ret;
  size_t len = 1;
  char *hsz;

  len += (path != NULL ? FUNC5 (path) : 0);
  len += FUNC5 (mcset_mc_basename);
  len += (ext != NULL ? FUNC5 (ext) : 0);
  hsz = FUNC6 (len);
  FUNC4 (hsz, "%s%s%s", (path != NULL ? path : ""), mcset_mc_basename,
    (ext != NULL ? ext : ""));
  if ((ret = FUNC2 (hsz, "wb")) == NULL)
    FUNC1 (FUNC0("can't create %s file ,%s' for output.\n"), (ext ? ext : "text"), hsz);
  FUNC3 (hsz);
  return ret;
}