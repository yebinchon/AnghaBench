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
struct yytbl_data {struct yytbl_data* td_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct yytbl_data*) ; 

int FUNC1 (struct yytbl_data *td)
{
	if (td->td_data)
		FUNC0 (td->td_data);
	td->td_data = 0;
	FUNC0 (td);
	return 0;
}