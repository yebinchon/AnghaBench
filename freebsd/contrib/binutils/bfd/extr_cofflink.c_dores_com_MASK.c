#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {scalar_t__ pe; } ;
struct TYPE_4__ {int SizeOfHeapReserve; int SizeOfStackReserve; int SizeOfHeapCommit; int SizeOfStackCommit; } ;
struct TYPE_5__ {TYPE_1__ pe_opthdr; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC3 (char *ptr, bfd *output_bfd, int heap)
{
  if (FUNC0(output_bfd)->pe)
    {
      int val = FUNC2 (ptr, &ptr, 0);

      if (heap)
	FUNC1(output_bfd)->pe_opthdr.SizeOfHeapReserve = val;
      else
	FUNC1(output_bfd)->pe_opthdr.SizeOfStackReserve = val;

      if (ptr[0] == ',')
	{
	  val = FUNC2 (ptr+1, &ptr, 0);
	  if (heap)
	    FUNC1(output_bfd)->pe_opthdr.SizeOfHeapCommit = val;
	  else
	    FUNC1(output_bfd)->pe_opthdr.SizeOfStackCommit = val;
	}
    }
  return ptr;
}