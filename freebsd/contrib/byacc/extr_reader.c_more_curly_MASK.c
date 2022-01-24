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

/* Variables and functions */
#define  R_CURL 128 
 char* cptr ; 
 int FUNC0 () ; 

__attribute__((used)) static int
FUNC1(void)
{
    char *save = cptr;
    int result = 0;
    int finish = 0;
    do
    {
	switch (FUNC0())
	{
	case 0:
	case '\n':
	    finish = 1;
	    break;
	case R_CURL:
	    finish = 1;
	    result = 1;
	    break;
	}
	++cptr;
    }
    while (!finish);
    cptr = save;
    return result;
}