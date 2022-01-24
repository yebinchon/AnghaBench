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
typedef  int /*<<< orphan*/  opaque_t ;
typedef  int /*<<< orphan*/  am_node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  VLOOK_CREATE ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC4(char *dir, opaque_t arg)
{
  if (!FUNC0(dir, "/defaults")) {
    int error = 0;
    am_node *am;
    am = FUNC1(arg, dir, &error, VLOOK_CREATE);
    if (am && error < 0)
      (void)FUNC2(am, &error);
    if (error > 0) {
      errno = error;		/* XXX */
      FUNC3(XLOG_ERROR, "unionfs: could not mount %s: %m", dir);
    }
    return error;
  }
  return 0;
}