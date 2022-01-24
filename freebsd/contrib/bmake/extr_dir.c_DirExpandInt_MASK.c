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
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/ * LstNode ;
typedef  int /*<<< orphan*/  Lst ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUCCESS ; 

__attribute__((used)) static void
FUNC5(const char *word, Lst path, Lst expansions)
{
    LstNode 	  ln;	    	/* Current node */
    Path	  *p;	    	/* Directory in the node */

    if (FUNC4(path) == SUCCESS) {
	while ((ln = FUNC3(path)) != NULL) {
	    p = (Path *)FUNC2(ln);
	    FUNC0(word, p, expansions);
	}
	FUNC1(path);
    }
}