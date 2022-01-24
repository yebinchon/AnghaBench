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
struct TYPE_2__ {char* tag; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__** nodestr ; 
 int ntypes ; 

__attribute__((used)) static void
FUNC1(FILE *cfile)
{
	int i;

	FUNC0(cfile, "static const short nodesize[%d] = {\n", ntypes);
	for (i = 0 ; i < ntypes ; i++) {
		FUNC0(cfile, "      ALIGN(sizeof (struct %s)),\n", nodestr[i]->tag);
	}
	FUNC0(cfile, "};\n");
}