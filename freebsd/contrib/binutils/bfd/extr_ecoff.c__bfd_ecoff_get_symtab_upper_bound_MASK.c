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
typedef  int /*<<< orphan*/  ecoff_symbol_type ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  debug_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

long
FUNC3 (bfd *abfd)
{
  if (! FUNC0 (abfd, NULL,
					&FUNC2 (abfd)->debug_info))
    return -1;

  if (FUNC1 (abfd) == 0)
    return 0;

  return (FUNC1 (abfd) + 1) * (sizeof (ecoff_symbol_type *));
}