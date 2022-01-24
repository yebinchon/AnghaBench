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
struct dso {int /*<<< orphan*/ * symbols; int /*<<< orphan*/ * symbol_names; } ;
typedef  enum map_type { ____Placeholder_map_type } map_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dso*,int) ; 
 void FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct dso *dso, enum map_type type)
{
	FUNC0(dso, type);
	return FUNC1(&dso->symbol_names[type],
				     &dso->symbols[type]);
}