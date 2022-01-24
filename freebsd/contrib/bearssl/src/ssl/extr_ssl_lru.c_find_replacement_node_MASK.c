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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  br_ssl_session_cache_lru ;

/* Variables and functions */
 scalar_t__ ADDR_NULL ; 
 scalar_t__ TREE_LEFT_OFF ; 
 scalar_t__ TREE_RIGHT_OFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static uint32_t
FUNC2(br_ssl_session_cache_lru *cc, uint32_t x, uint32_t *al)
{
	uint32_t y1, y2;

	y1 = FUNC0(cc, x);
	if (y1 != ADDR_NULL) {
		y2 = x + TREE_LEFT_OFF;
		for (;;) {
			uint32_t z;

			z = FUNC1(cc, y1);
			if (z == ADDR_NULL) {
				*al = y2;
				return y1;
			}
			y2 = y1 + TREE_RIGHT_OFF;
			y1 = z;
		}
	}
	y1 = FUNC1(cc, x);
	if (y1 != ADDR_NULL) {
		y2 = x + TREE_RIGHT_OFF;
		for (;;) {
			uint32_t z;

			z = FUNC0(cc, y1);
			if (z == ADDR_NULL) {
				*al = y2;
				return y1;
			}
			y2 = y1 + TREE_LEFT_OFF;
			y1 = z;
		}
	}
	*al = ADDR_NULL;
	return ADDR_NULL;
}