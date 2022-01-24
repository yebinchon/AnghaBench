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
struct regexp_list {char* regexps; TYPE_1__* buf; int /*<<< orphan*/  len; scalar_t__ multiple_regexps; } ;
struct TYPE_2__ {int /*<<< orphan*/  fastmap; } ;

/* Variables and functions */
 int CHAR_BIT ; 
 int /*<<< orphan*/  EXIT_TROUBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char const*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3 (struct regexp_list *reglist)
{
  if (reglist->regexps)
    {
      /* At least one regexp was specified.  Allocate a fastmap for it.  */
      reglist->buf->fastmap = FUNC2 (1 << CHAR_BIT);
      if (reglist->multiple_regexps)
	{
	  /* Compile the disjunction of the regexps.
	     (If just one regexp was specified, it is already compiled.)  */
	  char const *m = FUNC1 (reglist->regexps, reglist->len,
					      reglist->buf);
	  if (m != 0)
	    FUNC0 (EXIT_TROUBLE, 0, "%s: %s", reglist->regexps, m);
	}
    }
}