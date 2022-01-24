#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_13__ {TYPE_1__* fld; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
struct TYPE_12__ {TYPE_3__* rt_rtx; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 TYPE_3__* FUNC3 (TYPE_3__*,int) ; 
 TYPE_3__* FUNC4 (TYPE_3__*,int,int) ; 
 int FUNC5 (TYPE_3__*,int) ; 

int
FUNC6 (rtx *loc, rtx in)
{
  enum rtx_code code = FUNC0 (in);
  const char *fmt = FUNC1 (code);
  int i, j;

  for (i = FUNC2 (code) - 1; i >= 0; i--)
    {
      if (loc == &in->u.fld[i].rt_rtx)
	return 1;
      if (fmt[i] == 'e')
	{
	  if (FUNC6 (loc, FUNC3 (in, i)))
	    return 1;
	}
      else if (fmt[i] == 'E')
	for (j = FUNC5 (in, i) - 1; j >= 0; j--)
	  if (FUNC6 (loc, FUNC4 (in, i, j)))
	    return 1;
    }
  return 0;
}