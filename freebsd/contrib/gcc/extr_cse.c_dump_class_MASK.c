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
struct table_elt {int /*<<< orphan*/  exp; struct table_elt* next_same_value; struct table_elt* first_same_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2 (struct table_elt *classp)
{
  struct table_elt *elt;

  FUNC0 (stderr, "Equivalence chain for ");
  FUNC1 (stderr, classp->exp);
  FUNC0 (stderr, ": \n");

  for (elt = classp->first_same_value; elt; elt = elt->next_same_value)
    {
      FUNC1 (stderr, elt->exp);
      FUNC0 (stderr, "\n");
    }
}