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
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__* sum_block ; 

__attribute__((used)) static void
FUNC3 (bfd *abfd, int type, char *start, char *end)
{
  int sum = 0;
  char *s;
  char front[6];
  bfd_size_type wrlen;

  front[0] = '%';
  FUNC0 (front + 1, end - start + 5);
  front[3] = type;

  for (s = start; s < end; s++)
    sum += sum_block[(unsigned char) *s];

  sum += sum_block[(unsigned char) front[1]];	/* Length.  */
  sum += sum_block[(unsigned char) front[2]];
  sum += sum_block[(unsigned char) front[3]];	/* Type.  */
  FUNC0 (front + 4, sum);
  if (FUNC2 (front, (bfd_size_type) 6, abfd) != 6)
    FUNC1 ();
  end[0] = '\n';
  wrlen = end - start + 1;
  if (FUNC2 (start, wrlen, abfd) != wrlen)
    FUNC1 ();
}