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
struct TYPE_2__ {scalar_t__ la_case_sensitivity; } ;

/* Variables and functions */
 scalar_t__ case_sensitivity ; 
 TYPE_1__* current_language ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1 (char *ignore, int from_tty)
{
   if (case_sensitivity != current_language->la_case_sensitivity)
      FUNC0(
"Warning: the current case sensitivity setting does not match the language.\n");
}