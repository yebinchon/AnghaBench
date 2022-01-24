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
 int /*<<< orphan*/  case_sensitive ; 
 scalar_t__ current_language ; 
 scalar_t__ expected_language ; 
 int /*<<< orphan*/  language ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  range ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  type ; 

void
FUNC5 (int quietly)
{
  if (quietly && expected_language == current_language)
    return;

  expected_language = current_language;
  FUNC0 ("Current language:  %s\n", language);
  FUNC2 ((char *) 0, 1);

  if (!quietly)
    {
      FUNC0 ("Type checking:     %s\n", type);
      FUNC4 ((char *) 0, 1);
      FUNC0 ("Range checking:    %s\n", range);
      FUNC3 ((char *) 0, 1);
      FUNC0 ("Case sensitivity:  %s\n", case_sensitive);
      FUNC1 ((char *) 0, 1);
    }
}