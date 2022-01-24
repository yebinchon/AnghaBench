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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * first_abbrev ; 
 unsigned long FUNC2 (unsigned char*,unsigned int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char *
FUNC3 (unsigned char *start, unsigned char *end)
{
  if (first_abbrev != NULL)
    return NULL;

  while (start < end)
    {
      unsigned int bytes_read;
      unsigned long entry;
      unsigned long tag;
      unsigned long attribute;
      int children;

      entry = FUNC2 (start, & bytes_read, 0);
      start += bytes_read;

      /* A single zero is supposed to end the section according
	 to the standard.  If there's more, then signal that to
	 the caller.  */
      if (entry == 0)
	return start == end ? NULL : start;

      tag = FUNC2 (start, & bytes_read, 0);
      start += bytes_read;

      children = *start++;

      FUNC0 (entry, tag, children);

      do
	{
	  unsigned long form;

	  attribute = FUNC2 (start, & bytes_read, 0);
	  start += bytes_read;

	  form = FUNC2 (start, & bytes_read, 0);
	  start += bytes_read;

	  if (attribute != 0)
	    FUNC1 (attribute, form);
	}
      while (attribute != 0);
    }

  return NULL;
}