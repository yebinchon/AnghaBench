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
struct map {int dummy; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAP__FUNCTION ; 
 struct dso* FUNC0 (char const*) ; 
 struct map* FUNC1 (int /*<<< orphan*/ ,struct dso*,int /*<<< orphan*/ ) ; 

struct map *FUNC2(const char *name)
{
	struct map *map = NULL;
	struct dso *dso = FUNC0(name);

	if (dso)
		map = FUNC1(0, dso, MAP__FUNCTION);

	return map;
}