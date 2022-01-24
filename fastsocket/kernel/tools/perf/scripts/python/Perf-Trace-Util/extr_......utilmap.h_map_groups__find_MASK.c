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
typedef  int /*<<< orphan*/  u64 ;
struct map_groups {int /*<<< orphan*/ * maps; } ;
struct map {int dummy; } ;
typedef  enum map_type { ____Placeholder_map_type } map_type ;

/* Variables and functions */
 struct map* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct map *FUNC1(struct map_groups *mg,
					   enum map_type type, u64 addr)
{
	return FUNC0(&mg->maps[type], addr);
}