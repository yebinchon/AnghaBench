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
struct comp_unit {int addr_size; int /*<<< orphan*/  abfd; } ;
typedef  int /*<<< orphan*/  bfd_uint64_t ;
typedef  int /*<<< orphan*/  bfd_byte ;
struct TYPE_2__ {int sign_extend_vma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_uint64_t
FUNC8 (struct comp_unit *unit, bfd_byte *buf)
{
  int signed_vma = FUNC7 (unit->abfd)->sign_extend_vma;

  if (signed_vma)
    {
      switch (unit->addr_size)
	{
	case 8:
	  return FUNC6 (unit->abfd, buf);
	case 4:
	  return FUNC5 (unit->abfd, buf);
	case 2:
	  return FUNC4 (unit->abfd, buf);
	default:
	  FUNC0 ();
	}
    }
  else
    {
      switch (unit->addr_size)
	{
	case 8:
	  return FUNC3 (unit->abfd, buf);
	case 4:
	  return FUNC2 (unit->abfd, buf);
	case 2:
	  return FUNC1 (unit->abfd, buf);
	default:
	  FUNC0 ();
	}
    }
}