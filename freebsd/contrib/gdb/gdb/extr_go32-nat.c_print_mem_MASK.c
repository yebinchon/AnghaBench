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
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static void
FUNC2 (unsigned long datum, const char *header, int in_pages_p)
{
  if (datum != 0xffffffffUL)
    {
      if (in_pages_p)
	datum <<= 12;
      FUNC1 (header);
      if (datum > 1024)
	{
	  FUNC0 ("%lu KB", datum >> 10);
	  if (datum > 1024 * 1024)
	    FUNC0 (" (%lu MB)", datum >> 20);
	}
      else
	FUNC0 ("%lu Bytes", datum);
      FUNC1 ("\n");
    }
}