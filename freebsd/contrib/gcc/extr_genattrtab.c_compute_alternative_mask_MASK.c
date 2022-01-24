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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int AND ; 
 scalar_t__ EQ_ATTR ; 
 scalar_t__ EQ_ATTR_ALT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int IOR ; 
 scalar_t__ NOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int) ; 
 char* alternative_name ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5 (rtx exp, enum rtx_code code)
{
  const char *string;
  if (FUNC0 (exp) == code)
    return FUNC5 (FUNC1 (exp, 0), code)
	   | FUNC5 (FUNC1 (exp, 1), code);

  else if (code == AND && FUNC0 (exp) == NOT
	   && FUNC0 (FUNC1 (exp, 0)) == EQ_ATTR
	   && FUNC3 (FUNC1 (exp, 0), 0) == alternative_name)
    string = FUNC3 (FUNC1 (exp, 0), 1);

  else if (code == IOR && FUNC0 (exp) == EQ_ATTR
	   && FUNC3 (exp, 0) == alternative_name)
    string = FUNC3 (exp, 1);

  else if (FUNC0 (exp) == EQ_ATTR_ALT)
    {
      if (code == AND && FUNC2 (exp, 1))
	return FUNC2 (exp, 0);

      if (code == IOR && !FUNC2 (exp, 1))
	return FUNC2 (exp, 0);

      return 0;
    }
  else
    return 0;

  if (string[1] == 0)
    return 1 << (string[0] - '0');
  return 1 << FUNC4 (string);
}