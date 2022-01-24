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
struct breakpoint {int /*<<< orphan*/  addr_string; TYPE_1__* loc; } ;
struct TYPE_2__ {int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ addressprint ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  uiout ; 

__attribute__((used)) static void
FUNC4 (struct breakpoint *b, CORE_ADDR *last_addr)
{
  if (addressprint)
    {
      FUNC0 (4);
      FUNC2 (uiout, "addr", b->loc->address);
    }
  FUNC0 (5);
  *last_addr = b->loc->address;
  if (FUNC1 (b->addr_string, "throw") != NULL)
    FUNC3 (uiout, "what", "exception throw");
  else
    FUNC3 (uiout, "what", "exception catch");
}