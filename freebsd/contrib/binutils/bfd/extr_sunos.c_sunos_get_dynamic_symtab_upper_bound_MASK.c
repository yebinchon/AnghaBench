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
struct sunos_dynamic_info {int dynsym_count; int /*<<< orphan*/  valid; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 int /*<<< orphan*/  bfd_error_no_symbols ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long
FUNC3 (bfd *abfd)
{
  struct sunos_dynamic_info *info;

  if (! FUNC2 (abfd))
    return -1;

  info = (struct sunos_dynamic_info *) FUNC1 (abfd);
  if (! info->valid)
    {
      FUNC0 (bfd_error_no_symbols);
      return -1;
    }

  return (info->dynsym_count + 1) * sizeof (asymbol *);
}