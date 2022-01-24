#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  opt_dev; int /*<<< orphan*/  opt_fs; } ;
typedef  TYPE_1__ am_opts ;

/* Variables and functions */
 int /*<<< orphan*/  XLOG_USER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC3(am_opts *fo)
{

  if (!fo->opt_dev) {
    FUNC1(XLOG_USER, "tmpfs: no device specified");
    return 0;
  }

  FUNC0("EFS: mounting device \"%s\" on \"%s\"", fo->opt_dev, fo->opt_fs);

  /*
   * Determine magic cookie to put in mtab
   */
  return FUNC2(fo->opt_dev);
}