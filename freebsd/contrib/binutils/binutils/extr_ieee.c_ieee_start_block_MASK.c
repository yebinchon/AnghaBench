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
struct ieee_handle {int block_depth; int /*<<< orphan*/  vars; } ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ ieee_bb_record_enum ; 
 int /*<<< orphan*/  FUNC0 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_handle*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (void *p, bfd_vma addr)
{
  struct ieee_handle *info = (struct ieee_handle *) p;

  if (! FUNC0 (info, &info->vars))
    return FALSE;

  if (info->block_depth == 1)
    {
      if (! FUNC5 (info, addr)
	  || ! FUNC1 (info))
	return FALSE;
    }
  else
    {
      if (! FUNC3 (info, (int) ieee_bb_record_enum)
	  || ! FUNC3 (info, 6)
	  || ! FUNC5 (info, 0)
	  || ! FUNC4 (info, "")
	  || ! FUNC5 (info, 0)
	  || ! FUNC5 (info, 0)
	  || ! FUNC5 (info, addr))
	return FALSE;
    }

  if (! FUNC2 (info, addr))
    return FALSE;

  ++info->block_depth;

  return TRUE;
}