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
struct mid_q_entry {struct TCP_Server_Info* callback_data; } ;
struct TCP_Server_Info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mid_q_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct TCP_Server_Info*,int) ; 

__attribute__((used)) static void
FUNC2(struct mid_q_entry *mid)
{
	struct TCP_Server_Info *server = mid->callback_data;

	FUNC0(mid);
	FUNC1(server, 1);
}