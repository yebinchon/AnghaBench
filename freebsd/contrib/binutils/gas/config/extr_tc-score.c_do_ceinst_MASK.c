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
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  REG_TYPE_SCORE ; 
 int /*<<< orphan*/  _IMM25 ; 
 int /*<<< orphan*/  _IMM5 ; 
 int FUNC0 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char**,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (char *str)
{
  char *strbak;

  strbak = str;
  FUNC4 (str);

  if (FUNC0 (&str, 20, _IMM5) == (int) FAIL
      || FUNC3 (&str) == (int) FAIL
      || FUNC2 (&str, 15, REG_TYPE_SCORE) == (int) FAIL
      || FUNC3 (&str) == (int) FAIL
      || FUNC2 (&str, 10, REG_TYPE_SCORE) == (int) FAIL
      || FUNC3 (&str) == (int) FAIL
      || FUNC0 (&str, 5, _IMM5) == (int) FAIL
      || FUNC3 (&str) == (int) FAIL
      || FUNC0 (&str, 0, _IMM5) == (int) FAIL
      || FUNC1 (str) == (int) FAIL)
    {
      return;
    }
  else
    {
      str = strbak;
      if (FUNC0 (&str, 0, _IMM25) == (int) FAIL)
	return;
    }
}