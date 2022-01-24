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
struct ar_hdr {int /*<<< orphan*/  AR_DATE; } ;
typedef  int /*<<< orphan*/  GNode ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ar_hdr*,char*) ; 
 int /*<<< orphan*/  MEMBER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,long) ; 

void
FUNC6(GNode *gn)
{
    FILE *	  arch;	  /* Stream open to archive, positioned properly */
    struct ar_hdr arh;	  /* Current header describing member */
    char *p1, *p2;

    arch = FUNC0(FUNC1(ARCHIVE, gn, &p1),
			  FUNC1(MEMBER, gn, &p2),
			  &arh, "r+");

    FUNC3(p1);
    FUNC3(p2);

    FUNC5(arh.AR_DATE, sizeof(arh.AR_DATE), "%-12ld", (long) now);

    if (arch != NULL) {
	(void)FUNC4((char *)&arh, sizeof(struct ar_hdr), 1, arch);
	FUNC2(arch);
    }
}