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
typedef  int /*<<< orphan*/  tree ;
struct data_reference {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct data_reference*) ; 
 int /*<<< orphan*/  FUNC1 (struct data_reference*) ; 
 int /*<<< orphan*/  REPORT_DETAILS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vect_dump ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7 (struct data_reference *dr)
{
  tree step = FUNC1 (dr);
  tree scalar_type = FUNC2 (FUNC0 (dr));

  if (!step || FUNC5 (step, FUNC3 (scalar_type)))
    {
      if (FUNC6 (REPORT_DETAILS))
	FUNC4 (vect_dump, "not consecutive access");
      return false;
    }
  return true;
}