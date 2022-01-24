#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct sctp_ssnmap {TYPE_2__ out; TYPE_1__ in; scalar_t__ malloced; } ;

/* Variables and functions */
 int MAX_KMALLOC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_ssnmap*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssnmap ; 

void FUNC5(struct sctp_ssnmap *map)
{
	if (map && map->malloced) {
		int size;

		size = FUNC4(map->in.len, map->out.len);
		if (size <= MAX_KMALLOC_SIZE)
			FUNC3(map);
		else
			FUNC1((unsigned long)map, FUNC2(size));
		FUNC0(ssnmap);
	}
}