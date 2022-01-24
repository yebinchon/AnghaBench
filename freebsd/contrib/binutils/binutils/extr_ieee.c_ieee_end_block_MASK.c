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
struct ieee_handle {scalar_t__ highaddr; int /*<<< orphan*/  block_depth; int /*<<< orphan*/  vars; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ ieee_be_record_enum ; 
 int /*<<< orphan*/  FUNC0 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_handle*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (void *p, bfd_vma addr)
{
  struct ieee_handle *info = (struct ieee_handle *) p;

  /* The address we are given is the end of the block, but IEEE seems
     to want to the address of the last byte in the block, so we
     subtract one.  */
  if (! FUNC0 (info, &info->vars)
      || ! FUNC2 (info, (int) ieee_be_record_enum)
      || ! FUNC3 (info, addr - 1))
    return FALSE;

  if (! FUNC1 (info, addr))
    return FALSE;

  --info->block_depth;

  if (addr > info->highaddr)
    info->highaddr = addr;

  return TRUE;
}