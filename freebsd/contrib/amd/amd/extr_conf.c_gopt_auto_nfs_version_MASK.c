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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  nfs_dispatcher ; 
 int /*<<< orphan*/  nfs_program_2 ; 
 int /*<<< orphan*/  nfs_program_3 ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(const char *val)
{
  if (FUNC1(val, "2") == 0)
    nfs_dispatcher = nfs_program_2;
  else if (FUNC1(val, "3") == 0)
    nfs_dispatcher = nfs_program_3;
  else {
    FUNC0(stderr, "conf: bad auto nfs version : \"%s\"\n", val);
    return 1;
  }
  return 0;
}