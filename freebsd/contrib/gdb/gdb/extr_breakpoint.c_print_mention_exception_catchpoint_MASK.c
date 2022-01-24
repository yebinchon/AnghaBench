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
struct breakpoint {int /*<<< orphan*/  number; int /*<<< orphan*/  addr_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2 (struct breakpoint *b)
{
  if (FUNC1 (b->addr_string, "throw") != NULL)
    FUNC0 ("Catchpoint %d (throw)", b->number);
  else
    FUNC0 ("Catchpoint %d (catch)", b->number);
}