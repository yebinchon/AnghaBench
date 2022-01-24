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
struct expression {int dummy; } ;
typedef  enum noside { ____Placeholder_noside } noside ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int FUNC2 (struct type*,int) ; 
 int FUNC3 (struct type*,int) ; 
 char* FUNC4 (struct type*,int) ; 
 struct type* FUNC5 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct type*) ; 
 int FUNC7 (struct type*) ; 
 int /*<<< orphan*/  FUNC8 (struct value*) ; 
 struct type* FUNC9 (struct value*) ; 
 struct type* FUNC10 (struct type*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 struct value* FUNC12 (struct type*,struct expression*,int*,int) ; 
 char* FUNC13 (struct expression*,int*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct value*) ; 
 struct value* FUNC17 (struct type*,struct value*) ; 

__attribute__((used)) static struct value *
FUNC18 (struct value *struct_val,
		       struct expression *exp,
		       int *pos, enum noside noside, int nargs)
{
  struct type *struct_type = FUNC10 (FUNC9 (struct_val));
  struct type *substruct_type = struct_type;
  struct type *field_type;
  int fieldno = -1;
  int variantno = -1;
  int subfieldno = -1;
  while (--nargs >= 0)
    {
      int pc = *pos;
      struct value *val = NULL;
      int nlabels = 0;
      int bitpos, bitsize;
      char *addr;

      /* Skip past the labels, and count them. */
      while (FUNC13 (exp, pos) != NULL)
	nlabels++;

      do
	{
	  char *label = FUNC13 (exp, &pc);
	  if (label)
	    {
	      for (fieldno = 0; fieldno < FUNC7 (struct_type);
		   fieldno++)
		{
		  char *field_name = FUNC4 (struct_type, fieldno);
		  if (field_name != NULL && FUNC0 (field_name, label))
		    {
		      variantno = -1;
		      subfieldno = fieldno;
		      substruct_type = struct_type;
		      goto found;
		    }
		}
	      for (fieldno = 0; fieldno < FUNC7 (struct_type);
		   fieldno++)
		{
		  char *field_name = FUNC4 (struct_type, fieldno);
		  field_type = FUNC5 (struct_type, fieldno);
		  if ((field_name == 0 || *field_name == '\0')
		      && FUNC1 (field_type) == TYPE_CODE_UNION)
		    {
		      variantno = 0;
		      for (; variantno < FUNC7 (field_type);
			   variantno++)
			{
			  substruct_type
			    = FUNC5 (field_type, variantno);
			  if (FUNC1 (substruct_type) == TYPE_CODE_STRUCT)
			    {
			      for (subfieldno = 0;
				 subfieldno < FUNC7 (substruct_type);
				   subfieldno++)
				{
				  if (FUNC0 (FUNC4 (substruct_type,
							      subfieldno),
					     label))
				    {
				      goto found;
				    }
				}
			    }
			}
		    }
		}
	      FUNC11 ("there is no field named %s", label);
	    found:
	      ;
	    }
	  else
	    {
	      /* Unlabelled tuple element - go to next field. */
	      if (variantno >= 0)
		{
		  subfieldno++;
		  if (subfieldno >= FUNC7 (substruct_type))
		    {
		      variantno = -1;
		      substruct_type = struct_type;
		    }
		}
	      if (variantno < 0)
		{
		  fieldno++;
		  subfieldno = fieldno;
		  if (fieldno >= FUNC7 (struct_type))
		    FUNC11 ("too many initializers");
		  field_type = FUNC5 (struct_type, fieldno);
		  if (FUNC1 (field_type) == TYPE_CODE_UNION
		      && FUNC4 (struct_type, fieldno)[0] == '0')
		    FUNC11 ("don't know which variant you want to set");
		}
	    }

	  /* Here, struct_type is the type of the inner struct,
	     while substruct_type is the type of the inner struct.
	     These are the same for normal structures, but a variant struct
	     contains anonymous union fields that contain substruct fields.
	     The value fieldno is the index of the top-level (normal or
	     anonymous union) field in struct_field, while the value
	     subfieldno is the index of the actual real (named inner) field
	     in substruct_type. */

	  field_type = FUNC5 (substruct_type, subfieldno);
	  if (val == 0)
	    val = FUNC12 (field_type, exp, pos, noside);

	  /* Now actually set the field in struct_val. */

	  /* Assign val to field fieldno. */
	  if (FUNC9 (val) != field_type)
	    val = FUNC17 (field_type, val);

	  bitsize = FUNC3 (substruct_type, subfieldno);
	  bitpos = FUNC2 (struct_type, fieldno);
	  if (variantno >= 0)
	    bitpos += FUNC2 (substruct_type, subfieldno);
	  addr = FUNC8 (struct_val) + bitpos / 8;
	  if (bitsize)
	    FUNC15 (addr, FUNC16 (val),
			  bitpos % 8, bitsize);
	  else
	    FUNC14 (addr, FUNC8 (val),
		    FUNC6 (FUNC9 (val)));
	}
      while (--nlabels > 0);
    }
  return struct_val;
}