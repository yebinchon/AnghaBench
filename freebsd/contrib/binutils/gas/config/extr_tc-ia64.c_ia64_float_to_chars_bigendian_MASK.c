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
typedef  int /*<<< orphan*/  LITTLENUM_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long,int) ; 

__attribute__((used)) static void
FUNC1 (char *lit, LITTLENUM_TYPE *words,
			       int prec)
{
  while (prec--)
    {
      FUNC0 (lit, (long) (*words++),
				 sizeof (LITTLENUM_TYPE));
      lit += sizeof (LITTLENUM_TYPE);
    }
}