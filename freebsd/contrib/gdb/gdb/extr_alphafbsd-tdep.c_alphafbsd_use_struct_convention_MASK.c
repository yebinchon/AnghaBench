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
typedef  enum type_code { ____Placeholder_type_code } type_code ;

/* Variables and functions */
 scalar_t__ ALPHA_REGISTER_SIZE ; 
 int FUNC0 (struct type*) ; 
 int TYPE_CODE_STRUCT ; 
 int TYPE_CODE_UNION ; 
 scalar_t__ FUNC1 (struct type*,int) ; 
 scalar_t__ FUNC2 (struct type*,int) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 int FUNC4 (struct type*) ; 

__attribute__((used)) static int
FUNC5 (int gcc_p, struct type *type)
{
  enum type_code code;
  int i;

  /* All aggregate types that won't fit in a register must be returned
     in memory.  */
  if (FUNC3 (type) > ALPHA_REGISTER_SIZE)
    return 1;

  /* The only aggregate types that can be returned in a register are
     structs and unions.  Arrays must be returned in memory.  */
  code = FUNC0 (type);
  if (code != TYPE_CODE_STRUCT && code != TYPE_CODE_UNION)
    return 1;

  /* We need to check if this struct/union is "integer" like.  For
     this to be true, the offset of each adressable subfield must be
     zero.  Note that bit fields are not addressable.  */
  for (i = 0; i < FUNC4 (type); i++)
    {
      /* If the field bitsize is non-zero, it isn't adressable.  */
      if (FUNC1 (type, i) != 0
	  && FUNC2 (type, i) == 0)
	return 1;
    }

  return 0;
}