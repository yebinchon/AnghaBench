#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  section_htab; } ;
typedef  TYPE_1__ bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (char const*) ; 

char *
FUNC6 (bfd *abfd, const char *templat, int *count)
{
  int num;
  unsigned int len;
  char *sname;

  len = FUNC5 (templat);
  sname = FUNC1 (len + 8);
  if (sname == NULL)
    return NULL;
  FUNC2 (sname, templat, len);
  num = 1;
  if (count != NULL)
    num = *count;

  do
    {
      /* If we have a million sections, something is badly wrong.  */
      if (num > 999999)
	FUNC0 ();
      FUNC4 (sname + len, ".%d", num++);
    }
  while (FUNC3 (&abfd->section_htab, sname, FALSE, FALSE));

  if (count != NULL)
    *count = num;
  return sname;
}