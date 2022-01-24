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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* linetab ; 
 long linetab_offset ; 
 int linetab_size ; 
 scalar_t__ local_linesz ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5 (bfd *abfd, long offset, int size)
{
  int val;

  linetab_offset = offset;
  linetab_size = size;

  FUNC2 ();

  if (size == 0)
    return 0;

  if (FUNC1 (abfd, offset, 0) < 0)
    return -1;

  /* Allocate the desired table, plus a sentinel */
  linetab = (char *) FUNC4 (size + local_linesz);

  val = FUNC0 (linetab, size, abfd);
  if (val != size)
    return -1;

  /* Terminate it with an all-zero sentinel record */
  FUNC3 (linetab + size, 0, local_linesz);

  return 0;
}