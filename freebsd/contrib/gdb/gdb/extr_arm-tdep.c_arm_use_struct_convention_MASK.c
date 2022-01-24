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
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 scalar_t__ DEPRECATED_REGISTER_SIZE ; 
 int FUNC1 (struct type*) ; 
 int TYPE_CODE_FLT ; 
 int TYPE_CODE_STRUCT ; 
 int TYPE_CODE_UNION ; 
 scalar_t__ FUNC2 (struct type*,int) ; 
 scalar_t__ FUNC3 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct type*,int) ; 
 scalar_t__ FUNC5 (struct type*) ; 
 int FUNC6 (struct type*) ; 
 struct type* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (int gcc_p, struct type *type)
{
  int nRc;
  enum type_code code;

  FUNC0 (type);

  /* In the ARM ABI, "integer" like aggregate types are returned in
     registers.  For an aggregate type to be integer like, its size
     must be less than or equal to DEPRECATED_REGISTER_SIZE and the
     offset of each addressable subfield must be zero.  Note that bit
     fields are not addressable, and all addressable subfields of
     unions always start at offset zero.

     This function is based on the behaviour of GCC 2.95.1.
     See: gcc/arm.c: arm_return_in_memory() for details.

     Note: All versions of GCC before GCC 2.95.2 do not set up the
     parameters correctly for a function returning the following
     structure: struct { float f;}; This should be returned in memory,
     not a register.  Richard Earnshaw sent me a patch, but I do not
     know of any way to detect if a function like the above has been
     compiled with the correct calling convention.  */

  /* All aggregate types that won't fit in a register must be returned
     in memory.  */
  if (FUNC5 (type) > DEPRECATED_REGISTER_SIZE)
    {
      return 1;
    }

  /* The only aggregate types that can be returned in a register are
     structs and unions.  Arrays must be returned in memory.  */
  code = FUNC1 (type);
  if ((TYPE_CODE_STRUCT != code) && (TYPE_CODE_UNION != code))
    {
      return 1;
    }

  /* Assume all other aggregate types can be returned in a register.
     Run a check for structures, unions and arrays.  */
  nRc = 0;

  if ((TYPE_CODE_STRUCT == code) || (TYPE_CODE_UNION == code))
    {
      int i;
      /* Need to check if this struct/union is "integer" like.  For
         this to be true, its size must be less than or equal to
         DEPRECATED_REGISTER_SIZE and the offset of each addressable
         subfield must be zero.  Note that bit fields are not
         addressable, and unions always start at offset zero.  If any
         of the subfields is a floating point type, the struct/union
         cannot be an integer type.  */

      /* For each field in the object, check:
         1) Is it FP? --> yes, nRc = 1;
         2) Is it addressable (bitpos != 0) and
         not packed (bitsize == 0)?
         --> yes, nRc = 1  
       */

      for (i = 0; i < FUNC6 (type); i++)
	{
	  enum type_code field_type_code;
	  field_type_code = FUNC1 (FUNC7 (FUNC4 (type, i)));

	  /* Is it a floating point type field?  */
	  if (field_type_code == TYPE_CODE_FLT)
	    {
	      nRc = 1;
	      break;
	    }

	  /* If bitpos != 0, then we have to care about it.  */
	  if (FUNC2 (type, i) != 0)
	    {
	      /* Bitfields are not addressable.  If the field bitsize is 
	         zero, then the field is not packed.  Hence it cannot be
	         a bitfield or any other packed type.  */
	      if (FUNC3 (type, i) == 0)
		{
		  nRc = 1;
		  break;
		}
	    }
	}
    }

  return nRc;
}