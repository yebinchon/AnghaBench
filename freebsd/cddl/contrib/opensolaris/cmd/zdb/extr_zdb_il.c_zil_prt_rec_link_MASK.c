#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zilog_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_2__ {scalar_t__ lr_link_obj; scalar_t__ lr_doid; } ;
typedef  TYPE_1__ lr_link_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* tab_prefix ; 

__attribute__((used)) static void
FUNC1(zilog_t *zilog, int txtype, void *arg)
{
	lr_link_t *lr = arg;

	(void) FUNC0("%sdoid %llu, link_obj %llu, name %s\n", tab_prefix,
	    (u_longlong_t)lr->lr_doid, (u_longlong_t)lr->lr_link_obj,
	    (char *)(lr + 1));
}