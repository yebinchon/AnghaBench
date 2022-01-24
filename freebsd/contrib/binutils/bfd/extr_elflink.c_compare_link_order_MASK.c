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
struct bfd_link_order {int dummy; } ;
typedef  scalar_t__ bfd_vma ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bfd_link_order*) ; 

__attribute__((used)) static int
FUNC1 (const void * a, const void * b)
{
  bfd_vma apos;
  bfd_vma bpos;

  apos = FUNC0 (*(struct bfd_link_order **)a);
  bpos = FUNC0 (*(struct bfd_link_order **)b);
  if (apos < bpos)
    return -1;
  return apos > bpos;
}