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
struct TYPE_3__ {char* opt_mount; scalar_t__ opt_unmount; int /*<<< orphan*/  opt_fs; scalar_t__ opt_umount; } ;
typedef  TYPE_1__ am_opts ;

/* Variables and functions */
 int /*<<< orphan*/  UNMOUNT_PROGRAM ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4(am_opts *fo)
{
  char *prog;

  if (fo->opt_unmount && fo->opt_umount) {
    FUNC0(XLOG_ERROR, "program: cannot specify both unmount and umount options");
    return 0;
  }
  if (!fo->opt_mount) {
    FUNC0(XLOG_ERROR, "program: must specify mount command");
    return 0;
  }
  if (!fo->opt_unmount && !fo->opt_umount) {
    fo->opt_unmount = FUNC1(NULL, UNMOUNT_PROGRAM, " umount ", fo->opt_fs);
    FUNC0(XLOG_INFO, "program: un/umount not specified; using default \"%s\"",
	 fo->opt_unmount);
  }
  prog = FUNC2(fo->opt_mount, ' ');

  return FUNC3(prog ? prog + 1 : fo->opt_mount);
}