#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  etree_type ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  asection ;
struct TYPE_2__ {int /*<<< orphan*/ * section; int /*<<< orphan*/ * dotp; int /*<<< orphan*/  dot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ expld ; 

void
FUNC1 (etree_type *tree, asection *current_section, bfd_vma *dotp)
{
  expld.dot = *dotp;
  expld.dotp = dotp;
  expld.section = current_section;
  FUNC0 (tree);
}