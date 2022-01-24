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
struct p9_client {scalar_t__ max_tag; int /*<<< orphan*/ * tagpool; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct p9_client *c)
{
	int err = 0;

	c->tagpool = FUNC2();
	if (FUNC0(c->tagpool)) {
		err = FUNC1(c->tagpool);
		c->tagpool = NULL;
		goto error;
	}

	FUNC3(c->tagpool); /* reserve tag 0 */

	c->max_tag = 0;
error:
	return err;
}