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
struct dst_trans {int dummy; } ;
struct dst_node {TYPE_1__* disk; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  first_minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dst_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_node*) ; 
 int FUNC4 (struct dst_node*,int) ; 

__attribute__((used)) static int FUNC5(struct dst_node *n)
{
	int err;

	err = FUNC4(n, sizeof(struct dst_trans));
	if (err)
		return err;

	err = FUNC2(n);
	if (err)
		return err;

	FUNC3(n);
	FUNC0(n->disk);

	FUNC1("DST: started remote node '%s', minor: %d.\n", n->name, n->disk->first_minor);

	return 0;
}