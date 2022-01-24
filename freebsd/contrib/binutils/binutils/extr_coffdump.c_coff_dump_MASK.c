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
struct coff_ofile {int nsources; int nsections; scalar_t__ sections; int /*<<< orphan*/  source_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4 (struct coff_ofile *ptr)
{
  int i;

  FUNC3 ("Coff dump");
  FUNC2 ();
  FUNC3 ("#souces %d", ptr->nsources);
  FUNC2 ();
  FUNC1 (ptr->source_head);

  for (i = 0; i < ptr->nsections; i++)
    FUNC0 (ptr->sections + i);
}