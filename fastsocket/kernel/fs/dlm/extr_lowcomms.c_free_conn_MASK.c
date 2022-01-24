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
struct connection {int /*<<< orphan*/  list; struct connection* othercon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct connection*,int) ; 
 int /*<<< orphan*/  con_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct connection*) ; 

__attribute__((used)) static void FUNC3(struct connection *con)
{
	FUNC0(con, true);
	if (con->othercon)
		FUNC2(con_cache, con->othercon);
	FUNC1(&con->list);
	FUNC2(con_cache, con);
}