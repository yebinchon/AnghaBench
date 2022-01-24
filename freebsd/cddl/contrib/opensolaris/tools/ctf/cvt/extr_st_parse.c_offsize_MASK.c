#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ml_offset; int ml_size; } ;
typedef  TYPE_1__ mlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 char* FUNC1 (char*,int*) ; 

__attribute__((used)) static char *
FUNC2(char *cp, mlist_t *mlp)
{
	int offset, size;

	if (*cp == ',')
		cp++;
	cp = FUNC1(cp, &offset);
	if (*cp++ != ',')
		FUNC0("offsize/2", ",", cp - 1);
	cp = FUNC1(cp, &size);
	if (*cp++ != ';')
		FUNC0("offsize/3", ";", cp - 1);
	mlp->ml_offset = offset;
	mlp->ml_size = size;
	return (cp);
}