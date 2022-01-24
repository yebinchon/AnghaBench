#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* bfd_section; } ;
typedef  TYPE_1__ segment_info_type ;
typedef  void* segT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,TYPE_1__*) ; 
 void* now_seg ; 
 int now_subseg ; 
 TYPE_1__* FUNC1 (void*) ; 
 int /*<<< orphan*/  stdoutput ; 
 TYPE_1__* FUNC2 (int,int) ; 

void
FUNC3 (register segT seg, register int subseg)
{
  segment_info_type *seginfo = FUNC1 (seg);
  now_seg = seg;
  now_subseg = subseg;

  if (! seginfo)
    {
      seginfo = FUNC2 (1, sizeof (*seginfo));
      seginfo->bfd_section = seg;
      (void) FUNC0 (stdoutput, seg, seginfo);
    }
}