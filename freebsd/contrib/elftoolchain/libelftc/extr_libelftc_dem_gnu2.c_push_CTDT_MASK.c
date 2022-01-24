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
struct vector_str {int size; int /*<<< orphan*/ * container; } ;

/* Variables and functions */
 int FUNC0 (struct vector_str*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct vector_str*,char const*,size_t) ; 

__attribute__((used)) static bool
FUNC3(const char *s, size_t l, struct vector_str *v)
{

	if (s == NULL || l == 0 || v == NULL)
		return (false);

	if (FUNC2(v, s, l) == false)
		return (false);

	FUNC1(v->size > 1);

	return (FUNC0(v, v->container[v->size - 2]));
}