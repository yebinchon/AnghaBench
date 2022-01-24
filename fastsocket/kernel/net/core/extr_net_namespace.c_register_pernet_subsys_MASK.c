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
struct pernet_operations {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  first_device ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  net_mutex ; 
 int FUNC2 (int /*<<< orphan*/ ,struct pernet_operations*) ; 

int FUNC3(struct pernet_operations *ops)
{
	int error;
	FUNC0(&net_mutex);
	error =  FUNC2(first_device, ops);
	FUNC1(&net_mutex);
	return error;
}