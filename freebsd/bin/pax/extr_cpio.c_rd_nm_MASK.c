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
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ ARCHD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (char*,int) ; 

__attribute__((used)) static int
FUNC2(ARCHD *arcn, int nsz)
{
	/*
	 * do not even try bogus values
	 */
	if ((nsz == 0) || (nsz > (int)sizeof(arcn->name))) {
		FUNC0(1, "Cpio file name length %d is out of range", nsz);
		return(-1);
	}

	/*
	 * read the name and make sure it is not empty and is \0 terminated
	 */
	if ((FUNC1(arcn->name,nsz) != nsz) || (arcn->name[nsz-1] != '\0') ||
	    (arcn->name[0] == '\0')) {
		FUNC0(1, "Cpio file name in header is corrupted");
		return(-1);
	}
	return(0);
}