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
struct event_format {int /*<<< orphan*/  system; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (void const*,void const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const void *a, const void *b)
{
	struct event_format * const * ea = a;
	struct event_format * const * eb = b;
	int res;

	res = FUNC1((*ea)->name, (*eb)->name);
	if (res)
		return res;

	res = FUNC1((*ea)->system, (*eb)->system);
	if (res)
		return res;

	return FUNC0(a, b);
}