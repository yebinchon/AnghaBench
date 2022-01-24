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
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int FUNC1 (struct type*) ; 
#define  TYPE_CODE_STRUCT 129 
#define  TYPE_CODE_UNION 128 
 struct type* FUNC2 (struct type*,char*) ; 
 struct type* FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*) ; 

__attribute__((used)) static struct type *
FUNC5 (struct type *type0)
{
  struct type *type;

  if (type0 == NULL)
    return NULL;

  /* FIXME:  TYPE_FLAG_FIXED_INSTANCE should be defined in gdbtypes.h */
  /*  if (TYPE_FLAGS (type0) & TYPE_FLAG_FIXED_INSTANCE)
     return type0;
   */
  FUNC0 (type0);

  switch (FUNC1 (type0))
    {
    default:
      return type0;
    case TYPE_CODE_STRUCT:
      type = FUNC3 (type0);
      if (type != NULL)
	return FUNC4 (type);
      return type0;
    case TYPE_CODE_UNION:
      type = FUNC2 (type0, "___XVU");
      if (type != NULL)
	return FUNC4 (type);
      return type0;
    }
}