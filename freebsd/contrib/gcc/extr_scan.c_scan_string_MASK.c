#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* ptr; } ;
typedef  TYPE_1__ sstring ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3 (FILE *fp, sstring *s, int init)
{
  int c;

  for (;;)
    {
      c = FUNC2 (fp);
      if (c == EOF || c == '\n')
	break;
      if (c == init)
	{
	  c = FUNC2 (fp);
	  break;
	}
      if (c == '\\')
	{
	  c = FUNC2 (fp);
	  if (c == EOF)
	    break;
	  if (c == '\n')
	    continue;
	}
      FUNC1 (s, c);
    }
  FUNC0 (s, 1);
  *s->ptr = 0;
  return c;
}