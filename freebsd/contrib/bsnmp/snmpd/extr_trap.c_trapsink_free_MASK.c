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
struct trapsink {int socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct trapsink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct trapsink*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  trapsink_list ; 

__attribute__((used)) static void
FUNC3(struct trapsink *t)
{
	FUNC0(&trapsink_list, t, link);
	if (t->socket != -1)
		(void)FUNC1(t->socket);
	FUNC2(t);
}