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
struct value {int dummy; } ;
struct type {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 struct type* FUNC0 (struct type*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct value* FUNC1 (struct type*,char*,int /*<<< orphan*/ ) ; 

struct value *
FUNC2 (struct type *type0, char *valaddr, CORE_ADDR address,
		    struct value *val0)
{
  struct type *type = FUNC0 (type0, valaddr, address, NULL);
  if (type == type0 && val0 != NULL)
    return val0;
  else
    return FUNC1 (type, valaddr, address);
}