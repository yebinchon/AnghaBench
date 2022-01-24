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
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static const char *
FUNC4 (const char *path)
{
  char *end;
  char *hsz;

  if (! path || *path == 0)
    return "./";
  hsz = FUNC3 (FUNC2 (path) + 2);
  FUNC1 (hsz, path);
  end = hsz + FUNC2 (hsz);
  if (hsz[-1] != '/' && hsz[-1] != '\\')
    FUNC1 (end, "/");
  while ((end = FUNC0 (hsz, '\\')) != NULL)
    *end = '/';
  return hsz;
}