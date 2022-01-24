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
struct svc_xprt_class {int /*<<< orphan*/  xcl_list; int /*<<< orphan*/  xcl_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svc_xprt_class_lock ; 

void FUNC4(struct svc_xprt_class *xcl)
{
	FUNC0("svc: Removing svc transport class '%s'\n", xcl->xcl_name);
	FUNC2(&svc_xprt_class_lock);
	FUNC1(&xcl->xcl_list);
	FUNC3(&svc_xprt_class_lock);
}