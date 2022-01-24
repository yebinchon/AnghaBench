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
struct TYPE_3__ {char const* out; int flags; char const* in; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int DMGL_ANSI ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 
 TYPE_1__* optable ; 
 int FUNC2 (char const*) ; 

const char *
FUNC3 (const char *opname, int options)
{
  size_t i;
  int len;

  len = FUNC2 (opname);
  for (i = 0; i < FUNC0 (optable); i++)
    {
      if ((int) FUNC2 (optable[i].out) == len
	  && (options & DMGL_ANSI) == (optable[i].flags & DMGL_ANSI)
	  && FUNC1 (optable[i].out, opname, len) == 0)
	return optable[i].in;
    }
  return (0);
}