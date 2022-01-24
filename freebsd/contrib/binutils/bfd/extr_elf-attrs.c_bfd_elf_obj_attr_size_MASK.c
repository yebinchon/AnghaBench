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
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_ATTR_GNU ; 
 int /*<<< orphan*/  OBJ_ATTR_PROC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bfd_vma
FUNC1 (bfd *abfd)
{
  bfd_vma size;

  size = FUNC0 (abfd, OBJ_ATTR_PROC);
  size += FUNC0 (abfd, OBJ_ATTR_GNU);

  /* 'A' <sections for each vendor> */
  return (size ? size + 1 : 0);
}