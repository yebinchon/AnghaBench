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
struct filter_arg {int dummy; } ;

/* Variables and functions */
 struct filter_arg* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct filter_arg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct filter_arg *FUNC2(void)
{
	struct filter_arg *arg;

	arg = FUNC0(sizeof(*arg));
	FUNC1(arg, 0, sizeof(*arg));

	return arg;
}