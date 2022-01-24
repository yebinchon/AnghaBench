#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char type ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
#define  TYPE_CODE_ARRAY 152 
#define  TYPE_CODE_BITSTRING 151 
#define  TYPE_CODE_BOOL 150 
#define  TYPE_CODE_CHAR 149 
#define  TYPE_CODE_COMPLEX 148 
#define  TYPE_CODE_ENUM 147 
#define  TYPE_CODE_ERROR 146 
#define  TYPE_CODE_FLT 145 
#define  TYPE_CODE_FUNC 144 
#define  TYPE_CODE_INT 143 
#define  TYPE_CODE_MEMBER 142 
#define  TYPE_CODE_METHOD 141 
#define  TYPE_CODE_NAMESPACE 140 
#define  TYPE_CODE_PTR 139 
#define  TYPE_CODE_RANGE 138 
#define  TYPE_CODE_REF 137 
#define  TYPE_CODE_SET 136 
 scalar_t__ FUNC6 (char*) ; 
#define  TYPE_CODE_STRING 135 
#define  TYPE_CODE_STRUCT 134 
#define  TYPE_CODE_TEMPLATE 133 
#define  TYPE_CODE_TEMPLATE_ARG 132 
#define  TYPE_CODE_TYPEDEF 131 
#define  TYPE_CODE_UNDEF 130 
#define  TYPE_CODE_UNION 129 
#define  TYPE_CODE_VOID 128 
 scalar_t__ FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 char* FUNC13 (char*,int) ; 
 char* FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 TYPE_1__* FUNC16 (char*) ; 
 scalar_t__ FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 char* FUNC20 (char*) ; 
 int FUNC21 (char*) ; 
 scalar_t__ FUNC22 (char*) ; 
 scalar_t__ FUNC23 (char*) ; 
 char* FUNC24 (char*) ; 
 char* FUNC25 (char*) ; 
 scalar_t__ FUNC26 (char*) ; 
 char* FUNC27 (char*) ; 
 scalar_t__ FUNC28 (char*) ; 
 scalar_t__ FUNC29 (char*) ; 
 char* FUNC30 (char*) ; 
 scalar_t__ FUNC31 (char*) ; 
 char* FUNC32 (char*) ; 
 scalar_t__ FUNC33 (char*) ; 
 scalar_t__ FUNC34 (char*) ; 
 scalar_t__ FUNC35 (char*) ; 
 scalar_t__ FUNC36 (char*) ; 
 char* FUNC37 (char*) ; 
 int /*<<< orphan*/  FUNC38 (char*) ; 
 int /*<<< orphan*/  dont_print_type_obstack ; 
 int /*<<< orphan*/  FUNC39 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC43 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (char*,int) ; 
 int /*<<< orphan*/  FUNC47 (char*,...) ; 
 int /*<<< orphan*/  FUNC48 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC49 (char*) ; 

void
FUNC50 (struct type *type, int spaces)
{
  int idx;

  if (spaces == 0)
    FUNC41 (&dont_print_type_obstack, 0);

  if (FUNC21 (type) > 0
      || (FUNC8 (type) && FUNC22 (type) > 0))
    {
      struct type **first_dont_print
      = (struct type **) FUNC40 (&dont_print_type_obstack);

      int i = (struct type **) FUNC43 (&dont_print_type_obstack)
      - first_dont_print;

      while (--i >= 0)
	{
	  if (type == first_dont_print[i])
	    {
	      FUNC48 (spaces, "type node ");
	      FUNC39 (type, gdb_stdout);
	      FUNC47 (" <same as already seen type>\n");
	      return;
	    }
	}

      FUNC44 (&dont_print_type_obstack, type);
    }

  FUNC48 (spaces, "type node ");
  FUNC39 (type, gdb_stdout);
  FUNC47 ("\n");
  FUNC48 (spaces, "name '%s' (",
		    FUNC20 (type) ? FUNC20 (type) : "<NULL>");
  FUNC39 (FUNC20 (type), gdb_stdout);
  FUNC47 (")\n");
  FUNC48 (spaces, "tagname '%s' (",
		    FUNC30 (type) ? FUNC30 (type) : "<NULL>");
  FUNC39 (FUNC30 (type), gdb_stdout);
  FUNC47 (")\n");
  FUNC48 (spaces, "code 0x%x ", FUNC5 (type));
  switch (FUNC5 (type))
    {
    case TYPE_CODE_UNDEF:
      FUNC47 ("(TYPE_CODE_UNDEF)");
      break;
    case TYPE_CODE_PTR:
      FUNC47 ("(TYPE_CODE_PTR)");
      break;
    case TYPE_CODE_ARRAY:
      FUNC47 ("(TYPE_CODE_ARRAY)");
      break;
    case TYPE_CODE_STRUCT:
      FUNC47 ("(TYPE_CODE_STRUCT)");
      break;
    case TYPE_CODE_UNION:
      FUNC47 ("(TYPE_CODE_UNION)");
      break;
    case TYPE_CODE_ENUM:
      FUNC47 ("(TYPE_CODE_ENUM)");
      break;
    case TYPE_CODE_FUNC:
      FUNC47 ("(TYPE_CODE_FUNC)");
      break;
    case TYPE_CODE_INT:
      FUNC47 ("(TYPE_CODE_INT)");
      break;
    case TYPE_CODE_FLT:
      FUNC47 ("(TYPE_CODE_FLT)");
      break;
    case TYPE_CODE_VOID:
      FUNC47 ("(TYPE_CODE_VOID)");
      break;
    case TYPE_CODE_SET:
      FUNC47 ("(TYPE_CODE_SET)");
      break;
    case TYPE_CODE_RANGE:
      FUNC47 ("(TYPE_CODE_RANGE)");
      break;
    case TYPE_CODE_STRING:
      FUNC47 ("(TYPE_CODE_STRING)");
      break;
    case TYPE_CODE_BITSTRING:
      FUNC47 ("(TYPE_CODE_BITSTRING)");
      break;
    case TYPE_CODE_ERROR:
      FUNC47 ("(TYPE_CODE_ERROR)");
      break;
    case TYPE_CODE_MEMBER:
      FUNC47 ("(TYPE_CODE_MEMBER)");
      break;
    case TYPE_CODE_METHOD:
      FUNC47 ("(TYPE_CODE_METHOD)");
      break;
    case TYPE_CODE_REF:
      FUNC47 ("(TYPE_CODE_REF)");
      break;
    case TYPE_CODE_CHAR:
      FUNC47 ("(TYPE_CODE_CHAR)");
      break;
    case TYPE_CODE_BOOL:
      FUNC47 ("(TYPE_CODE_BOOL)");
      break;
    case TYPE_CODE_COMPLEX:
      FUNC47 ("(TYPE_CODE_COMPLEX)");
      break;
    case TYPE_CODE_TYPEDEF:
      FUNC47 ("(TYPE_CODE_TYPEDEF)");
      break;
    case TYPE_CODE_TEMPLATE:
      FUNC47 ("(TYPE_CODE_TEMPLATE)");
      break;
    case TYPE_CODE_TEMPLATE_ARG:
      FUNC47 ("(TYPE_CODE_TEMPLATE_ARG)");
      break;
    case TYPE_CODE_NAMESPACE:
      FUNC47 ("(TYPE_CODE_NAMESPACE)");
      break;
    default:
      FUNC47 ("(UNKNOWN TYPE CODE)");
      break;
    }
  FUNC49 ("\n");
  FUNC48 (spaces, "length %d\n", FUNC19 (type));
  FUNC48 (spaces, "upper_bound_type 0x%x ",
		    FUNC3 (type));
  FUNC45 (FUNC3 (type));
  FUNC49 ("\n");
  FUNC48 (spaces, "lower_bound_type 0x%x ",
		    FUNC2 (type));
  FUNC45 (FUNC2 (type));
  FUNC49 ("\n");
  FUNC48 (spaces, "objfile ");
  FUNC39 (FUNC24 (type), gdb_stdout);
  FUNC47 ("\n");
  FUNC48 (spaces, "target_type ");
  FUNC39 (FUNC32 (type), gdb_stdout);
  FUNC47 ("\n");
  if (FUNC32 (type) != NULL)
    {
      FUNC50 (FUNC32 (type), spaces + 2);
    }
  FUNC48 (spaces, "pointer_type ");
  FUNC39 (FUNC25 (type), gdb_stdout);
  FUNC47 ("\n");
  FUNC48 (spaces, "reference_type ");
  FUNC39 (FUNC27 (type), gdb_stdout);
  FUNC47 ("\n");
  FUNC48 (spaces, "type_chain ");
  FUNC39 (FUNC4 (type), gdb_stdout);
  FUNC47 ("\n");
  FUNC48 (spaces, "instance_flags 0x%x", FUNC18 (type));
  if (FUNC7 (type))
    {
      FUNC49 (" TYPE_FLAG_CONST");
    }
  if (FUNC36 (type))
    {
      FUNC49 (" TYPE_FLAG_VOLATILE");
    }
  if (FUNC6 (type))
    {
      FUNC49 (" TYPE_FLAG_CODE_SPACE");
    }
  if (FUNC9 (type))
    {
      FUNC49 (" TYPE_FLAG_DATA_SPACE");
    }
  if (FUNC0 (type))
    {
      FUNC49 (" TYPE_FLAG_ADDRESS_CLASS_1");
    }
  if (FUNC1 (type))
    {
      FUNC49 (" TYPE_FLAG_ADDRESS_CLASS_2");
    }
  FUNC49 ("\n");
  FUNC48 (spaces, "flags 0x%x", FUNC15 (type));
  if (FUNC33 (type))
    {
      FUNC49 (" TYPE_FLAG_UNSIGNED");
    }
  if (FUNC23 (type))
    {
      FUNC49 (" TYPE_FLAG_NOSIGN");
    }
  if (FUNC29 (type))
    {
      FUNC49 (" TYPE_FLAG_STUB");
    }
  if (FUNC31 (type))
    {
      FUNC49 (" TYPE_FLAG_TARGET_STUB");
    }
  if (FUNC28 (type))
    {
      FUNC49 (" TYPE_FLAG_STATIC");
    }
  if (FUNC26 (type))
    {
      FUNC49 (" TYPE_FLAG_PROTOTYPED");
    }
  if (FUNC17 (type))
    {
      FUNC49 (" TYPE_FLAG_INCOMPLETE");
    }
  if (FUNC34 (type))
    {
      FUNC49 (" TYPE_FLAG_VARARGS");
    }
  /* This is used for things like AltiVec registers on ppc.  Gcc emits
     an attribute for the array type, which tells whether or not we
     have a vector, instead of a regular array.  */
  if (FUNC35 (type))
    {
      FUNC49 (" TYPE_FLAG_VECTOR");
    }
  FUNC49 ("\n");
  FUNC48 (spaces, "nfields %d ", FUNC21 (type));
  FUNC39 (FUNC10 (type), gdb_stdout);
  FUNC49 ("\n");
  for (idx = 0; idx < FUNC21 (type); idx++)
    {
      FUNC48 (spaces + 2,
			"[%d] bitpos %d bitsize %d type ",
			idx, FUNC11 (type, idx),
			FUNC12 (type, idx));
      FUNC39 (FUNC14 (type, idx), gdb_stdout);
      FUNC47 (" name '%s' (",
		       FUNC13 (type, idx) != NULL
		       ? FUNC13 (type, idx)
		       : "<NULL>");
      FUNC39 (FUNC13 (type, idx), gdb_stdout);
      FUNC47 (")\n");
      if (FUNC14 (type, idx) != NULL)
	{
	  FUNC50 (FUNC14 (type, idx), spaces + 4);
	}
    }
  FUNC48 (spaces, "vptr_basetype ");
  FUNC39 (FUNC37 (type), gdb_stdout);
  FUNC49 ("\n");
  if (FUNC37 (type) != NULL)
    {
      FUNC50 (FUNC37 (type), spaces + 2);
    }
  FUNC48 (spaces, "vptr_fieldno %d\n", FUNC38 (type));
  switch (FUNC5 (type))
    {
    case TYPE_CODE_STRUCT:
      FUNC48 (spaces, "cplus_stuff ");
      FUNC39 (FUNC8 (type), gdb_stdout);
      FUNC49 ("\n");
      FUNC46 (type, spaces);
      break;

    case TYPE_CODE_FLT:
      FUNC48 (spaces, "floatformat ");
      if (FUNC16 (type) == NULL
	  || FUNC16 (type)->name == NULL)
	FUNC49 ("(null)");
      else
	FUNC49 (FUNC16 (type)->name);
      FUNC49 ("\n");
      break;

    default:
      /* We have to pick one of the union types to be able print and test
         the value.  Pick cplus_struct_type, even though we know it isn't
         any particular one. */
      FUNC48 (spaces, "type_specific ");
      FUNC39 (FUNC8 (type), gdb_stdout);
      if (FUNC8 (type) != NULL)
	{
	  FUNC47 (" (unknown data form)");
	}
      FUNC47 ("\n");
      break;

    }
  if (spaces == 0)
    FUNC42 (&dont_print_type_obstack, NULL);
}