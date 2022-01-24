#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct TYPE_2__ {void* size; void* address; } ;
struct reserve_info {TYPE_1__ re; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct reserve_info*,int /*<<< orphan*/ ,int) ; 
 struct reserve_info* FUNC1 (int) ; 

struct reserve_info *FUNC2(uint64_t address, uint64_t size)
{
	struct reserve_info *new = FUNC1(sizeof(*new));

	FUNC0(new, 0, sizeof(*new));

	new->re.address = address;
	new->re.size = size;

	return new;
}