#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int CPP_CLOSE_BRACE ; 
 int CPP_EOF ; 
 int CPP_OPEN_BRACE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1 (cpp_reader *pfile)
{
  int nesting = 1;
  for (;;)
    {
      enum cpp_ttype token = FUNC0 (pfile)->type;

      if (token == CPP_EOF)
	break;
      if (token == CPP_OPEN_BRACE)
	nesting++;
      if (token == CPP_CLOSE_BRACE && --nesting == 0)
	break;
    }
}