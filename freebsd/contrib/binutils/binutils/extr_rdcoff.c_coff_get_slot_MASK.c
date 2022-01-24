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
struct coff_types {struct coff_slots* slots; } ;
struct coff_slots {int /*<<< orphan*/ * slots; struct coff_slots* next; } ;
typedef  int /*<<< orphan*/  debug_type ;

/* Variables and functions */
 int COFF_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (struct coff_slots*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static debug_type *
FUNC2 (struct coff_types *types, int indx)
{
  struct coff_slots **pps;

  pps = &types->slots;

  while (indx >= COFF_SLOTS)
    {
      if (*pps == NULL)
	{
	  *pps = (struct coff_slots *) FUNC1 (sizeof **pps);
	  FUNC0 (*pps, 0, sizeof **pps);
	}
      pps = &(*pps)->next;
      indx -= COFF_SLOTS;
    }

  if (*pps == NULL)
    {
      *pps = (struct coff_slots *) FUNC1 (sizeof **pps);
      FUNC0 (*pps, 0, sizeof **pps);
    }

  return (*pps)->slots + indx;
}