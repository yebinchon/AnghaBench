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
struct TYPE_3__ {char* pathname; } ;
typedef  TYPE_1__ procinfo ;

/* Variables and functions */
 int /*<<< orphan*/  errmsg ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,char*) ; 

void
FUNC2 (procinfo *pi, char *func, int line)
{
  FUNC1 (errmsg, "procfs: %s line %d, %s", func, line, pi->pathname);
  FUNC0 (errmsg, errno);
}