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
struct ieee_range {struct ieee_range* next; int /*<<< orphan*/  low; } ;
struct ieee_handle {struct ieee_range* pending_ranges; } ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_range*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (struct ieee_handle *info, bfd_vma high)
{
  struct ieee_range *r;
  bfd_vma low;

  FUNC0 (info->pending_ranges != NULL);
  r = info->pending_ranges;
  low = r->low;
  info->pending_ranges = r->next;
  FUNC1 (r);
  return FUNC2 (info, FALSE, low, high);
}