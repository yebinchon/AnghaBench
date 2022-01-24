#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* types; } ;
struct ieee_info {TYPE_1__ types; } ;
typedef  int /*<<< orphan*/ * debug_type ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_4__ {int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ieee_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct ieee_info*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_info*,int /*<<< orphan*/  const**,int*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (struct ieee_info *info, const bfd_byte **pp,
		      debug_type *ptype)
{
  const bfd_byte *start;
  bfd_vma indx;

  start = *pp;

  if (! FUNC2 (info, pp, &indx))
    return FALSE;

  if (indx < 256)
    {
      *ptype = FUNC1 (info, start, indx);
      if (*ptype == NULL)
	return FALSE;
      return TRUE;
    }

  indx -= 256;
  if (! FUNC0 (info, indx, TRUE))
    return FALSE;

  *ptype = info->types.types[indx].type;

  return TRUE;
}