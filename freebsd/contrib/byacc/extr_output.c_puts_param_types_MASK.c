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
struct TYPE_3__ {char* type; char* name; struct TYPE_3__* next; int /*<<< orphan*/  type2; } ;
typedef  TYPE_1__ param ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 size_t FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(FILE * fp, param *list, int more)
{
    param *p;

    if (list != 0)
    {
	for (p = list; p; p = p->next)
	{
	    size_t len_type = FUNC1(p->type);
	    FUNC0(fp, "%s%s%s%s%s", p->type,
		    (((len_type != 0) && (p->type[len_type - 1] == '*'))
		     ? ""
		     : " "),
		    p->name, p->type2,
		    ((more || p->next) ? ", " : ""));
	}
    }
    else
    {
	if (!more)
	    FUNC0(fp, "void");
    }
}