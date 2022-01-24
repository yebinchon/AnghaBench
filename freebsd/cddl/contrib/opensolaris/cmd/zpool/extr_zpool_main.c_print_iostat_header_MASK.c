#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* cb_namewidth; } ;
typedef  TYPE_1__ iostat_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC2(iostat_cbdata_t *cb)
{
	(void) FUNC1("%*s     capacity     operations    bandwidth\n",
	    cb->cb_namewidth, "");
	(void) FUNC1("%-*s  alloc   free   read  write   read  write\n",
	    cb->cb_namewidth, "pool");
	FUNC0(cb);
}