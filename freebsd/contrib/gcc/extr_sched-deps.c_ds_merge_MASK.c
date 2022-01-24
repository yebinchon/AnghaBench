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
typedef  int /*<<< orphan*/  dw_t ;
typedef  int ds_t ;

/* Variables and functions */
 int DEP_TYPES ; 
 int FIRST_SPEC_TYPE ; 
 int LAST_SPEC_TYPE ; 
 int MAX_DEP_WEAK ; 
 int MIN_DEP_WEAK ; 
 int SPECULATIVE ; 
 int SPEC_TYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 

ds_t
FUNC3 (ds_t ds1, ds_t ds2)
{
  ds_t ds, t;

  FUNC0 ((ds1 & SPECULATIVE) && (ds2 & SPECULATIVE));

  ds = (ds1 & DEP_TYPES) | (ds2 & DEP_TYPES);

  t = FIRST_SPEC_TYPE;
  do
    {
      if ((ds1 & t) && !(ds2 & t))
	ds |= ds1 & t;
      else if (!(ds1 & t) && (ds2 & t))
	ds |= ds2 & t;
      else if ((ds1 & t) && (ds2 & t))
	{
	  ds_t dw;

	  dw = ((ds_t) FUNC1 (ds1, t)) * ((ds_t) FUNC1 (ds2, t));
	  dw /= MAX_DEP_WEAK;
	  if (dw < MIN_DEP_WEAK)
	    dw = MIN_DEP_WEAK;

	  ds = FUNC2 (ds, t, (dw_t) dw);
	}

      if (t == LAST_SPEC_TYPE)
	break;
      t <<= SPEC_TYPE_SHIFT;
    }
  while (1);

  return ds;
}