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
struct TYPE_2__ {scalar_t__ size; scalar_t__ address; } ;
struct reserve_info {char* label; TYPE_1__ re; struct reserve_info* next; } ;
struct boot_info {int /*<<< orphan*/  dt; struct reserve_info* reservelist; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(FILE *f, struct boot_info *bi)
{
	struct reserve_info *re;

	FUNC0(f, "/dts-v1/;\n\n");

	for (re = bi->reservelist; re; re = re->next) {
		if (re->label)
			FUNC0(f, "%s: ", re->label);
		FUNC0(f, "/memreserve/\t0x%016llx 0x%016llx;\n",
			(unsigned long long)re->re.address,
			(unsigned long long)re->re.size);
	}

	FUNC1(f, bi->dt, 0);
}