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
struct TYPE_2__ {char* name; } ;
typedef  TYPE_1__ Path ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  int /*<<< orphan*/  Lst ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STR_ADDSPACE ; 
 scalar_t__ SUCCESS ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*,char*,int /*<<< orphan*/ ) ; 

char *
FUNC7(const char *flag, Lst path)
{
    char	  *str;	  /* the string which will be returned */
    char	  *s1, *s2;/* the current directory preceded by 'flag' */
    LstNode	  ln;	  /* the node of the current directory */
    Path	  *p;	  /* the structure describing the current directory */

    str = FUNC4("");

    if (FUNC3(path) == SUCCESS) {
	while ((ln = FUNC2(path)) != NULL) {
	    p = (Path *)FUNC1(ln);
	    s2 = FUNC6(flag, p->name, 0);
	    str = FUNC6(s1 = str, s2, STR_ADDSPACE);
	    FUNC5(s1);
	    FUNC5(s2);
	}
	FUNC0(path);
    }

    return (str);
}