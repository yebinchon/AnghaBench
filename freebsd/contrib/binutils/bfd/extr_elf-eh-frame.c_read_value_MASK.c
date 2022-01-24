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
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_vma
FUNC7 (bfd *abfd, bfd_byte *buf, int width, int is_signed)
{
  bfd_vma value;

  switch (width)
    {
    case 2:
      if (is_signed)
	value = FUNC4 (abfd, buf);
      else
	value = FUNC1 (abfd, buf);
      break;
    case 4:
      if (is_signed)
	value = FUNC5 (abfd, buf);
      else
	value = FUNC2 (abfd, buf);
      break;
    case 8:
      if (is_signed)
	value = FUNC6 (abfd, buf);
      else
	value = FUNC3 (abfd, buf);
      break;
    default:
      FUNC0 ();
      return 0;
    }

  return value;
}