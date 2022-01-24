#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* bfd_section; } ;
typedef  TYPE_1__ segment_info_type ;
typedef  TYPE_2__* segT ;
struct TYPE_14__ {struct TYPE_14__* output_section; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*) ; 
 TYPE_2__* now_seg ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  stdoutput ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 TYPE_1__* FUNC6 (int,int) ; 

segT
FUNC7 (const char *segname, int force_new)
{
  segT secptr;
  segment_info_type *seginfo;
  const char *now_seg_name = (now_seg
			      ? FUNC0 (stdoutput, now_seg)
			      : 0);

  if (!force_new
      && now_seg_name
      && (now_seg_name == segname
	  || !FUNC5 (now_seg_name, segname)))
    return now_seg;

  if (!force_new)
    secptr = FUNC2 (stdoutput, segname);
  else
    secptr = FUNC1 (stdoutput, segname);

  seginfo = FUNC4 (secptr);
  if (! seginfo)
    {
      secptr->output_section = secptr;
      seginfo = FUNC6 (1, sizeof (*seginfo));
      seginfo->bfd_section = secptr;
      (void) FUNC3 (stdoutput, secptr, seginfo);
    }
  return secptr;
}