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
struct type {int dummy; } ;
struct symbol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (struct symbol*) ; 
#define  LOC_CONST 130 
#define  LOC_TYPEDEF 129 
#define  LOC_UNDEF 128 
 int FUNC2 (struct symbol*) ; 
 scalar_t__ FUNC3 (struct symbol*) ; 
 struct type* FUNC4 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC5 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC6 (struct type*) ; 
 int /*<<< orphan*/  FUNC7 (struct type*,struct type*) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9 (struct symbol *sym0, struct symbol *sym1)
{
  if (sym0 == sym1)
    return 1;
  if (FUNC3 (sym0) != FUNC3 (sym1)
      || FUNC2 (sym0) != FUNC2 (sym1))
    return 0;

  switch (FUNC2 (sym0))
    {
    case LOC_UNDEF:
      return 1;
    case LOC_TYPEDEF:
      {
	struct type *type0 = FUNC4 (sym0);
	struct type *type1 = FUNC4 (sym1);
	char *name0 = FUNC1 (sym0);
	char *name1 = FUNC1 (sym1);
	int len0 = FUNC8 (name0);
	return
	  FUNC6 (type0) == FUNC6 (type1)
	  && (FUNC7 (type0, type1)
	      || (len0 < FUNC8 (name1) && FUNC0 (name0, name1, len0)
		  && FUNC0 (name1 + len0, "___XV", 5)));
      }
    case LOC_CONST:
      return FUNC5 (sym0) == FUNC5 (sym1)
	&& FUNC7 (FUNC4 (sym0), FUNC4 (sym1));
    default:
      return 0;
    }
}