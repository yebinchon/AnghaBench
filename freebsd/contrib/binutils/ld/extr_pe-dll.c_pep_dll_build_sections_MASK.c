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
struct bfd_link_info {int /*<<< orphan*/  shared; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {scalar_t__ num_exports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 TYPE_1__* pe_def_file ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 

void
FUNC5 (bfd *abfd, struct bfd_link_info *info)
{
  FUNC3 (FUNC0 (abfd));
  FUNC4 (abfd, info);

  if (pe_def_file->num_exports == 0 && !info->shared)
    return;

  FUNC2 (abfd, info);
  FUNC1 (1);
}