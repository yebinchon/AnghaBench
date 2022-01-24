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
 int TARGET_CHAR_BIT ; 
 int FUNC0 (struct type*,int /*<<< orphan*/ ) ; 
 struct type* FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct type*) ; 

char *
FUNC3 (struct type *type, char *valaddr)
{
  if (FUNC2 (type))
    return FUNC3 (FUNC1 (type, 0),
				   valaddr +
				   FUNC0 (type,
						      0) / TARGET_CHAR_BIT);
  else
    return valaddr;
}