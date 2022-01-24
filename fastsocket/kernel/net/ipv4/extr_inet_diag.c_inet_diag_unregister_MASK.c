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
struct inet_diag_handler {size_t idiag_type; } ;
typedef  size_t __u16 ;

/* Variables and functions */
 size_t const INET_DIAG_GETSOCK_MAX ; 
 int /*<<< orphan*/ ** inet_diag_table ; 
 int /*<<< orphan*/  inet_diag_table_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(const struct inet_diag_handler *h)
{
	const __u16 type = h->idiag_type;

	if (type >= INET_DIAG_GETSOCK_MAX)
		return;

	FUNC0(&inet_diag_table_mutex);
	inet_diag_table[type] = NULL;
	FUNC1(&inet_diag_table_mutex);
}