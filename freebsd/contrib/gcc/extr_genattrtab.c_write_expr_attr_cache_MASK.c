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
struct attr_desc {scalar_t__ name; int /*<<< orphan*/  is_numeric; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ EQ_ATTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int
FUNC8 (rtx p, struct attr_desc *attr)
{
  const char *fmt;
  int i, ie, j, je;

  if (FUNC0 (p) == EQ_ATTR)
    {
      if (FUNC4 (p, 0) != attr->name)
	return 0;

      if (!attr->is_numeric)
	FUNC7 ("  enum attr_%s ", attr->name);
      else
	FUNC7 ("  int ");

      FUNC7 ("attr_%s = get_attr_%s (insn);\n", attr->name, attr->name);
      return 1;
    }

  fmt = FUNC1 (FUNC0 (p));
  ie = FUNC2 (FUNC0 (p));
  for (i = 0; i < ie; i++)
    {
      switch (*fmt++)
	{
	case 'e':
	  if (FUNC8 (FUNC3 (p, i), attr))
	    return 1;
	  break;

	case 'E':
	  je = FUNC6 (p, i);
	  for (j = 0; j < je; ++j)
	    if (FUNC8 (FUNC5 (p, i, j), attr))
	      return 1;
	  break;
	}
    }

  return 0;
}