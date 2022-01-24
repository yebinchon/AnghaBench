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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CONST_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  V2SImode 130 
#define  V4HImode 129 
#define  V8QImode 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8 (FILE *file, rtx x)
{
  int i;
  const char * pattern;

  FUNC6 (FUNC2 (x) == CONST_VECTOR);

  switch (FUNC3 (x))
    {
    case V2SImode: pattern = "%08x"; break;
    case V4HImode: pattern = "%04x"; break;
    case V8QImode: pattern = "%02x"; break;
    default:       FUNC7 ();
    }

  FUNC5 (file, "0x");
  for (i = FUNC1 (x); i--;)
    {
      rtx element;

      element = FUNC0 (x, i);
      FUNC5 (file, pattern, FUNC4 (element));
    }

  return 1;
}