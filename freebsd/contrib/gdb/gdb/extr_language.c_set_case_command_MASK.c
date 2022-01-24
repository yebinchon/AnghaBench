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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  case_mode ; 
 int /*<<< orphan*/  case_mode_auto ; 
 int /*<<< orphan*/  case_mode_manual ; 
 int /*<<< orphan*/  case_sensitive ; 
 int /*<<< orphan*/  case_sensitive_off ; 
 int /*<<< orphan*/  case_sensitive_on ; 
 int /*<<< orphan*/  case_sensitivity ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (char *ignore, int from_tty)
{
   if (FUNC0 (case_sensitive, "on"))
   {
      case_sensitivity = case_sensitive_on;
      case_mode = case_mode_manual;
   }
   else if (FUNC0 (case_sensitive, "off"))
   {
      case_sensitivity = case_sensitive_off;
      case_mode = case_mode_manual;
   }
   else if (FUNC0 (case_sensitive, "auto"))
   {
      case_mode = case_mode_auto;
      FUNC2 ();
      /* Avoid hitting the set_case_str call below.  We
         did it in set_type_range_case. */
      return;
   }
   else
   {
      FUNC4 ("Unrecognized case-sensitive setting: \"%s\"", case_sensitive);
   }
   FUNC1();
   FUNC3 ((char *) NULL, from_tty);
}