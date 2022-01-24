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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 

__attribute__((used)) static int
FUNC2(char *path, struct stat *statp)
{
  if (FUNC1(path, statp) < 0)
    return -1;
  else if (!FUNC0(statp->st_mode)) {
    errno = ENOTDIR;
    return -1;
  }
  return 0;
}