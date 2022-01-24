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
struct cpp_demangle_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpp_demangle_data*,char const*,size_t) ; 
 int FUNC1 (struct cpp_demangle_data*) ; 

__attribute__((used)) static int
FUNC2(struct cpp_demangle_data *ddata,
    const char *name1, size_t len1, const char *name2, size_t len2)
{

	if (ddata == NULL || name1 == NULL || len1 == 0 || name2 == NULL ||
	    len2 == 0)
		return (0);

	if (!FUNC1(ddata))
		return (0);
	if (!FUNC0(ddata, name1, len1))
		return (0);
	if (!FUNC1(ddata))
		return (0);
	if (!FUNC0(ddata, name2, len2))
		return (0);

	return (FUNC1(ddata));
}