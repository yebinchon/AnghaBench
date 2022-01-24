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

/* Variables and functions */
 int EOF ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC5 (sstring *s, int c)
{
  s->ptr = s->base;
  if (FUNC2 (c))
    {
      for (;;)
	{
	  FUNC4 (s, c);
	  c = FUNC0 ();
	  if (c == EOF || !(FUNC1 (c)))
	    break;
	}
    }
  FUNC3 (s, 1);
  *s->ptr = 0;
  return c;
}