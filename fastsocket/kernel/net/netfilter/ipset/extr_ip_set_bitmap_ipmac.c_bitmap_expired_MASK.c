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
typedef  int /*<<< orphan*/  u32 ;
struct ipmac_telem {int /*<<< orphan*/  timeout; } ;
struct bitmap_ipmac {int dummy; } ;

/* Variables and functions */
 struct ipmac_telem* FUNC0 (struct bitmap_ipmac const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC2(const struct bitmap_ipmac *map, u32 id)
{
	const struct ipmac_telem *elem = FUNC0(map, id);

	return FUNC1(elem->timeout);
}