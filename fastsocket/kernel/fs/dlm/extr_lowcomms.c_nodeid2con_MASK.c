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
struct connection {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct connection* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  connections_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct connection *FUNC3(int nodeid, gfp_t allocation)
{
	struct connection *con;

	FUNC1(&connections_lock);
	con = FUNC0(nodeid, allocation);
	FUNC2(&connections_lock);

	return con;
}