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
struct TYPE_2__ {int /*<<< orphan*/  e_machine; } ;
struct readelf {TYPE_1__ ehdr; } ;
typedef  int /*<<< orphan*/  rx ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static const char *
FUNC2(struct readelf *re, unsigned int num)
{
	static char rx[32];
	const char *rn;

	if ((rn = FUNC0(re->ehdr.e_machine, num)) != NULL)
		return (rn);

	FUNC1(rx, sizeof(rx), "r%u", num);

	return (rx);
}