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
struct vector_str {size_t size; int /*<<< orphan*/ * container; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC2(const struct vector_str *v)
{
	size_t i, len = 0;

	if (v == NULL)
		return (0);

	FUNC0(v->size > 0);

	for (i = 0; i < v->size; ++i)
		len += FUNC1(v->container[i]);

	return (len);
}