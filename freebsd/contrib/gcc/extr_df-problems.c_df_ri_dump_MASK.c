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
struct dataflow {int flags; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DF_RI_LIFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct dataflow *dflow, FILE *file)
{
  FUNC3 (file, FUNC2 ());

  if (dflow->flags & DF_RI_LIFE)
    {
      FUNC1 (file, "Register info:\n");
      FUNC0 (file, -1);
    }
}