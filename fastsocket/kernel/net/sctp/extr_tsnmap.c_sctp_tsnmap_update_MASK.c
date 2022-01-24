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
typedef  scalar_t__ u16 ;
struct sctp_tsnmap {unsigned long base_tsn; int /*<<< orphan*/  len; int /*<<< orphan*/  tsn_map; scalar_t__ cumulative_tsn_ack_point; scalar_t__ max_tsn_seen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct sctp_tsnmap *map)
{
	u16 len;
	unsigned long zero_bit;


	len = map->max_tsn_seen - map->cumulative_tsn_ack_point;
	zero_bit = FUNC1(map->tsn_map, len);
	if (!zero_bit)
		return;		/* The first 0-bit is bit 0.  nothing to do */

	map->base_tsn += zero_bit;
	map->cumulative_tsn_ack_point += zero_bit;

	FUNC0(map->tsn_map, map->tsn_map, zero_bit, map->len);
}