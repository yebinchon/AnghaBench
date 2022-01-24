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
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {scalar_t__ read_symbols; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (bfd *abfd)
{
  if (! FUNC0 (abfd)->read_symbols)
    {
      if (! FUNC1 (abfd))
	return FALSE;
      FUNC0 (abfd)->read_symbols = TRUE;
    }
  return TRUE;
}