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
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int FUNC1 (struct type*) ; 
#define  TYPE_CODE_ARRAY 130 
#define  TYPE_CODE_STRUCT 129 
#define  TYPE_CODE_UNION 128 
 struct type* FUNC2 (struct type*,struct value*,int /*<<< orphan*/ ) ; 
 struct type* FUNC3 (struct type*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct type* FUNC4 (struct type*,char*,int /*<<< orphan*/ ,struct value*) ; 

struct type *
FUNC5 (struct type *type, char *valaddr, CORE_ADDR address,
		   struct value *dval)
{
  FUNC0 (type);
  switch (FUNC1 (type))
    {
    default:
      return type;
    case TYPE_CODE_STRUCT:
      return FUNC3 (type, valaddr, address, NULL);
    case TYPE_CODE_ARRAY:
      return FUNC2 (type, dval, 0);
    case TYPE_CODE_UNION:
      if (dval == NULL)
	return type;
      else
	return FUNC4 (type, valaddr, address, dval);
    }
}