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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_2__ {int /*<<< orphan*/  removed_phis; int /*<<< orphan*/  total_phis; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 TYPE_1__ stats ; 

__attribute__((used)) static void
FUNC6 (basic_block bb)
{
  tree prev, phi;

  prev = NULL_TREE;
  phi = FUNC3 (bb);
  while (phi)
    {
      stats.total_phis++;

      if (! FUNC0 (phi))
	{
	  tree next = FUNC1 (phi);

	  if (dump_file && (dump_flags & TDF_DETAILS))
	    {
	      FUNC2 (dump_file, "Deleting : ");
	      FUNC4 (dump_file, phi, TDF_SLIM);
	      FUNC2 (dump_file, "\n");
	    }

	  FUNC5 (phi, prev);
	  stats.removed_phis++;
	  phi = next;
	}
      else
	{
	  prev = phi;
	  phi = FUNC1 (phi);
	}
    }
}