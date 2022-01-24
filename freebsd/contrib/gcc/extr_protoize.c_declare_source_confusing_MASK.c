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
 int /*<<< orphan*/  convert_filename ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  last_known_line_number ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  quiet_flag ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  source_confusion_recovery ; 

__attribute__((used)) static void
FUNC4 (const char *clean_p)
{
  if (!quiet_flag)
    {
      if (clean_p == 0)
	FUNC2 ("%s: %d: warning: source too confusing\n",
		FUNC3 (NULL, convert_filename), last_known_line_number);
      else
	FUNC2 ("%s: %d: warning: source too confusing\n",
		FUNC3 (NULL, convert_filename),
		FUNC0 (clean_p));
    }
  FUNC1 (source_confusion_recovery, 1);
}