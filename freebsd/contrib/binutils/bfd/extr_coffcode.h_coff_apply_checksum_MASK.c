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
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int peheader ; 
 unsigned int pelength ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *abfd)
{
  unsigned int computed;
  unsigned int checksum = 0;

  if (FUNC1 (abfd, 0x3c, SEEK_SET) != 0)
    return FALSE;

  if (!FUNC3 (abfd, &peheader))
    return FALSE;

  if (FUNC1 (abfd, peheader + 0x58, SEEK_SET) != 0)
    return FALSE;

  checksum = 0;
  FUNC0 (&checksum, (bfd_size_type) 4, abfd);

  if (FUNC1 (abfd, peheader, SEEK_SET) != 0)
    return FALSE;

  computed = FUNC2 (abfd);

  checksum = computed + pelength;

  if (FUNC1 (abfd, peheader + 0x58, SEEK_SET) != 0)
    return FALSE;

  FUNC0 (&checksum, (bfd_size_type) 4, abfd);

  return TRUE;
}