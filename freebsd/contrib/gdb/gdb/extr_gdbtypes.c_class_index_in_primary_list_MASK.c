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
struct type {int dummy; } ;

/* Variables and functions */
 struct type* FUNC0 (struct type*) ; 

int
FUNC1 (struct type *dclass)
{
  struct type *pbc;		/* primary base class */

  /* Simply recurse on primary base */
  pbc = FUNC0 (dclass);
  if (pbc)
    return 1 + FUNC1 (pbc);
  else
    return 0;
}