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
struct TYPE_5__ {scalar_t__* ptr; scalar_t__* base; } ;
typedef  TYPE_1__ sstring ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5 (FILE *fp, sstring *s, int c)
{
  s->ptr = s->base;
  if (FUNC1 (c))
    {
      for (;;)
	{
	  FUNC3 (s, c);
	  c = FUNC4 (fp);
	  if (c == EOF || ! FUNC0 (c))
	    break;
	}
    }
  FUNC2 (s, 1);
  *s->ptr = 0;
  return c;
}