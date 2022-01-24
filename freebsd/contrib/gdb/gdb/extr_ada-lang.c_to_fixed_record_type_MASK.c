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
 scalar_t__ FUNC0 (struct type*) ; 
 struct type* FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct type*,char*,int /*<<< orphan*/ ,struct value*) ; 
 struct type* FUNC3 (struct type*,char*,int /*<<< orphan*/ ,struct value*) ; 

__attribute__((used)) static struct type *
FUNC4 (struct type *type0, char *valaddr, CORE_ADDR address,
		      struct value *dval)
{
  struct type *templ_type;

  /* FIXME:  TYPE_FLAG_FIXED_INSTANCE should be defined in gdbtypes.h */
  /*  if (TYPE_FLAGS (type0) & TYPE_FLAG_FIXED_INSTANCE)
     return type0;
   */
  templ_type = FUNC1 (type0);

  if (templ_type != NULL)
    return FUNC2 (templ_type, valaddr, address, dval);
  else if (FUNC0 (type0))
    return FUNC3 (type0, valaddr, address, dval);
  else
    {
      /* FIXME:  TYPE_FLAG_FIXED_INSTANCE should be defined in gdbtypes.h */
      /*      TYPE_FLAGS (type0) |= TYPE_FLAG_FIXED_INSTANCE; */
      return type0;
    }

}