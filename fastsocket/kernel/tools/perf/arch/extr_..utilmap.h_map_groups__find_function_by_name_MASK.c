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
typedef  int /*<<< orphan*/  symbol_filter_t ;
struct symbol {int dummy; } ;
struct map_groups {int dummy; } ;
struct map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAP__FUNCTION ; 
 struct symbol* FUNC0 (struct map_groups*,int /*<<< orphan*/ ,char const*,struct map**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline
struct symbol *FUNC1(struct map_groups *mg,
						 const char *name, struct map **mapp,
						 symbol_filter_t filter)
{
	return FUNC0(mg, MAP__FUNCTION, name, mapp, filter);
}