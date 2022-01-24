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
typedef  int bfd_vma ;
typedef  int bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int**,int*) ; 

__attribute__((used)) static bfd_boolean
FUNC1 (bfd_byte **iter, bfd_byte *end, bfd_vma *value)
{
  bfd_byte *start, *p;

  start = *iter;
  if (!FUNC0 (iter, end))
    return FALSE;

  p = *iter;
  *value = *--p;
  while (p > start)
    *value = (*value << 7) | (*--p & 0x7f);

  return TRUE;
}