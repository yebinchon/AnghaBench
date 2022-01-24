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
struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct block {int dummy; } ;
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
struct TYPE_2__ {int /*<<< orphan*/  la_language; } ;
typedef  int LONGEST ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,char*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUIT ; 
 char* FUNC4 (struct minimal_symbol*) ; 
 struct type* FUNC5 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC6 (struct minimal_symbol*) ; 
 int FUNC7 (struct type*) ; 
#define  TYPE_CODE_ARRAY 145 
#define  TYPE_CODE_BOOL 144 
#define  TYPE_CODE_CHAR 143 
#define  TYPE_CODE_COMPLEX 142 
#define  TYPE_CODE_ENUM 141 
#define  TYPE_CODE_ERROR 140 
#define  TYPE_CODE_FLT 139 
#define  TYPE_CODE_FUNC 138 
#define  TYPE_CODE_INT 137 
#define  TYPE_CODE_MEMBER 136 
#define  TYPE_CODE_METHOD 135 
#define  TYPE_CODE_PTR 134 
#define  TYPE_CODE_RANGE 133 
#define  TYPE_CODE_REF 132 
#define  TYPE_CODE_STRUCT 131 
#define  TYPE_CODE_UNDEF 130 
#define  TYPE_CODE_UNION 129 
#define  TYPE_CODE_VOID 128 
 int /*<<< orphan*/  FUNC8 (struct type*) ; 
 int FUNC9 (struct type*,unsigned int) ; 
 char* FUNC10 (struct type*,unsigned int) ; 
 struct type* FUNC11 (struct type*,unsigned int) ; 
 int FUNC12 (struct type*) ; 
 unsigned int FUNC13 (struct type*) ; 
 struct type* FUNC14 (struct type*) ; 
 int /*<<< orphan*/  FUNC15 (struct type*) ; 
 char* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 unsigned int VTBL_FNADDR_OFFSET ; 
 int /*<<< orphan*/  addressprint ; 
 struct type* builtin_type_void ; 
 struct type* FUNC17 (struct type*) ; 
 int /*<<< orphan*/  FUNC18 (struct value*,struct ui_file*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct type*) ; 
 int /*<<< orphan*/  FUNC20 (struct type*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,struct type*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC23 (struct type*,struct type*,char*,int,int /*<<< orphan*/ ,struct ui_file*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* current_language ; 
 int /*<<< orphan*/  demangle ; 
 int /*<<< orphan*/  FUNC24 (char*,...) ; 
 int /*<<< orphan*/  FUNC25 (char*,struct type*) ; 
 int /*<<< orphan*/  FUNC26 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC28 (struct ui_file*) ; 
 int /*<<< orphan*/  language_m2 ; 
 struct minimal_symbol* FUNC29 (int /*<<< orphan*/ ) ; 
 struct type* FUNC30 (struct type*) ; 
 struct symbol* FUNC31 (int /*<<< orphan*/ ,struct block*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int output_format ; 
 int /*<<< orphan*/  prettyprint_arrays ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC34 (char*,struct type*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC36 (struct ui_file*,char,int /*<<< orphan*/ ,int) ; 
 unsigned int print_max ; 
 int /*<<< orphan*/  FUNC37 (char*,struct type*,int,int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC38 (int,struct ui_file*) ; 
 int /*<<< orphan*/  stop_print_at_null ; 
 int /*<<< orphan*/  FUNC39 (struct type*,char*,struct ui_file*,int) ; 
 int /*<<< orphan*/  unionprint ; 
 int FUNC40 (struct type*,char*) ; 
 int /*<<< orphan*/  FUNC41 (struct type*,char*) ; 
 int /*<<< orphan*/  FUNC42 (struct type*,char*,int /*<<< orphan*/ ,struct ui_file*,int,int,int,int,unsigned int) ; 
 unsigned int FUNC43 (int /*<<< orphan*/ ,int,int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC44 (struct type*,char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC45 (struct value*) ; 
 struct value* FUNC46 (struct type*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vtblprint ; 

int
FUNC47 (struct type *type, char *valaddr, int embedded_offset,
	     CORE_ADDR address, struct ui_file *stream, int format,
	     int deref_ref, int recurse, enum val_prettyprint pretty)
{
  unsigned int i = 0;	/* Number of characters printed */
  unsigned len;
  struct type *elttype;
  unsigned eltlen;
  LONGEST val;
  CORE_ADDR addr;

  FUNC0 (type);
  switch (FUNC7 (type))
    {
    case TYPE_CODE_ARRAY:
      elttype = FUNC17 (FUNC14 (type));
      if (FUNC12 (type) > 0 && FUNC12 (FUNC14 (type)) > 0)
	{
	  eltlen = FUNC12 (elttype);
	  len = FUNC12 (type) / eltlen;
	  if (prettyprint_arrays)
	    {
	      FUNC38 (2 + 2 * recurse, stream);
	    }
	  /* For an array of chars, print with string syntax.  */
	  if (eltlen == 1 &&
	      ((FUNC7 (elttype) == TYPE_CODE_INT)
	       || ((current_language->la_language == language_m2)
		   && (FUNC7 (elttype) == TYPE_CODE_CHAR)))
	      && (format == 0 || format == 's'))
	    {
	      /* If requested, look for the first null char and only print
	         elements up to it.  */
	      if (stop_print_at_null)
		{
		  unsigned int temp_len;

		  /* Look for a NULL char. */
		  for (temp_len = 0;
		       (valaddr + embedded_offset)[temp_len]
		       && temp_len < len && temp_len < print_max;
		       temp_len++);
		  len = temp_len;
		}

	      FUNC3 (stream, valaddr + embedded_offset, len, eltlen, 0);
	      i = len;
	    }
	  else
	    {
	      FUNC26 (stream, "{");
	      /* If this is a virtual function table, print the 0th
	         entry specially, and the rest of the members normally.  */
	      if (FUNC20 (elttype))
		{
		  i = 1;
		  FUNC26 (stream, "%d vtable entries", len - 1);
		}
	      else
		{
		  i = 0;
		}
	      FUNC42 (type, valaddr + embedded_offset, address, stream,
				     format, deref_ref, recurse, pretty, i);
	      FUNC26 (stream, "}");
	    }
	  break;
	}
      /* Array of unspecified length: treat like pointer to first elt.  */
      addr = address;
      goto print_unpacked_pointer;

    case TYPE_CODE_PTR:
      if (format && format != 's')
	{
	  FUNC37 (valaddr + embedded_offset, type, format, 0, stream);
	  break;
	}
      if (vtblprint && FUNC20 (type))
	{
	  /* Print the unmangled name if desired.  */
	  /* Print vtable entry - we only get here if we ARE using
	     -fvtable_thunks.  (Otherwise, look under TYPE_CODE_STRUCT.) */
	  CORE_ADDR addr
	    = FUNC25 (valaddr + embedded_offset, type);
	  FUNC35 (addr, stream);
	  break;
	}
      elttype = FUNC17 (FUNC14 (type));
      if (FUNC7 (elttype) == TYPE_CODE_METHOD)
	{
	  FUNC22 (valaddr + embedded_offset, type, stream);
	}
      else if (FUNC7 (elttype) == TYPE_CODE_MEMBER)
	{
	  FUNC21 (valaddr + embedded_offset,
				 FUNC8 (FUNC14 (type)),
				 stream, "&");
	}
      else
	{
	  addr = FUNC41 (type, valaddr + embedded_offset);
	print_unpacked_pointer:

	  if (FUNC7 (elttype) == TYPE_CODE_FUNC)
	    {
	      /* Try to print what function it points to.  */
	      FUNC35 (addr, stream);
	      /* Return value is irrelevant except for string pointers.  */
	      return (0);
	    }

	  if (addressprint && format != 's')
	    {
	      FUNC33 (addr, 1, stream);
	    }

	  /* For a pointer to char or unsigned char, also print the string
	     pointed to, unless pointer is null.  */
	  /* FIXME: need to handle wchar_t here... */

	  if (FUNC12 (elttype) == 1
	      && FUNC7 (elttype) == TYPE_CODE_INT
	      && (format == 0 || format == 's')
	      && addr != 0)
	    {
	      i = FUNC43 (addr, -1, FUNC12 (elttype), stream);
	    }
	  else if (FUNC19 (type))
	    {
	      /* print vtbl's nicely */
	      CORE_ADDR vt_address = FUNC41 (type, valaddr + embedded_offset);

	      struct minimal_symbol *msymbol =
	      FUNC29 (vt_address);
	      if ((msymbol != NULL) &&
		  (vt_address == FUNC6 (msymbol)))
		{
		  FUNC27 (" <", stream);
		  FUNC27 (FUNC4 (msymbol), stream);
		  FUNC27 (">", stream);
		}
	      if (vt_address && vtblprint)
		{
		  struct value *vt_val;
		  struct symbol *wsym = (struct symbol *) NULL;
		  struct type *wtype;
		  struct block *block = (struct block *) NULL;
		  int is_this_fld;

		  if (msymbol != NULL)
		    wsym = FUNC31 (FUNC1 (msymbol), block,
					  VAR_DOMAIN, &is_this_fld, NULL);

		  if (wsym)
		    {
		      wtype = FUNC5 (wsym);
		    }
		  else
		    {
		      wtype = FUNC14 (type);
		    }
		  vt_val = FUNC46 (wtype, vt_address, NULL);
		  FUNC18 (vt_val, stream, format,
				    deref_ref, recurse + 1, pretty);
		  if (pretty)
		    {
		      FUNC26 (stream, "\n");
		      FUNC38 (2 + 2 * recurse, stream);
		    }
		}
	    }

	  /* Return number of characters printed, including the terminating
	     '\0' if we reached the end.  val_print_string takes care including
	     the terminating '\0' if necessary.  */
	  return i;
	}
      break;

    case TYPE_CODE_MEMBER:
      FUNC24 ("not implemented: member type in c_val_print");
      break;

    case TYPE_CODE_REF:
      elttype = FUNC17 (FUNC14 (type));
      if (FUNC7 (elttype) == TYPE_CODE_MEMBER)
	{
	  FUNC21 (valaddr + embedded_offset,
				 FUNC8 (elttype),
				 stream, "");
	  break;
	}
      if (addressprint)
	{
	  CORE_ADDR addr
	    = FUNC25 (valaddr + embedded_offset, type);
	  FUNC26 (stream, "@");
	  FUNC33 (addr, 1, stream);
	  if (deref_ref)
	    FUNC27 (": ", stream);
	}
      /* De-reference the reference.  */
      if (deref_ref)
	{
	  if (FUNC7 (elttype) != TYPE_CODE_UNDEF)
	    {
	      struct value *deref_val =
	      FUNC46
	      (FUNC14 (type),
	       FUNC41 (FUNC30 (builtin_type_void),
			       valaddr + embedded_offset),
	       NULL);
	      FUNC18 (deref_val, stream, format, deref_ref,
				recurse, pretty);
	    }
	  else
	    FUNC27 ("???", stream);
	}
      break;

    case TYPE_CODE_UNION:
      if (recurse && !unionprint)
	{
	  FUNC26 (stream, "{...}");
	  break;
	}
      /* Fall through.  */
    case TYPE_CODE_STRUCT:
      /*FIXME: Abstract this away */
      if (vtblprint && FUNC20 (type))
	{
	  /* Print the unmangled name if desired.  */
	  /* Print vtable entry - we only get here if NOT using
	     -fvtable_thunks.  (Otherwise, look under TYPE_CODE_PTR.) */
	  int offset = (embedded_offset +
			FUNC9 (type, VTBL_FNADDR_OFFSET) / 8);
	  struct type *field_type = FUNC11 (type, VTBL_FNADDR_OFFSET);
	  CORE_ADDR addr
	    = FUNC25 (valaddr + offset, field_type);

	  FUNC35 (addr, stream);
	}
      else
	FUNC23 (type, type, valaddr, embedded_offset, address, stream, format,
			       recurse, pretty, NULL, 0);
      break;

    case TYPE_CODE_ENUM:
      if (format)
	{
	  FUNC37 (valaddr + embedded_offset, type, format, 0, stream);
	  break;
	}
      len = FUNC13 (type);
      val = FUNC40 (type, valaddr + embedded_offset);
      for (i = 0; i < len; i++)
	{
	  QUIT;
	  if (val == FUNC9 (type, i))
	    {
	      break;
	    }
	}
      if (i < len)
	{
	  FUNC27 (FUNC10 (type, i), stream);
	}
      else
	{
	  FUNC36 (stream, 'd', 0, val);
	}
      break;

    case TYPE_CODE_FUNC:
      if (format)
	{
	  FUNC37 (valaddr + embedded_offset, type, format, 0, stream);
	  break;
	}
      /* FIXME, we should consider, at least for ANSI C language, eliminating
         the distinction made between FUNCs and POINTERs to FUNCs.  */
      FUNC26 (stream, "{");
      FUNC39 (type, "", stream, -1);
      FUNC26 (stream, "} ");
      /* Try to print what function it points to, and its address.  */
      FUNC32 (address, stream, demangle);
      break;

    case TYPE_CODE_BOOL:
      format = format ? format : output_format;
      if (format)
	FUNC37 (valaddr + embedded_offset, type, format, 0, stream);
      else
	{
	  val = FUNC40 (type, valaddr + embedded_offset);
	  if (val == 0)
	    FUNC27 ("false", stream);
	  else if (val == 1)
	    FUNC27 ("true", stream);
	  else
	    FUNC36 (stream, 'd', 0, val);
	}
      break;

    case TYPE_CODE_RANGE:
      /* FIXME: create_range_type does not set the unsigned bit in a
         range type (I think it probably should copy it from the target
         type), so we won't print values which are too large to
         fit in a signed integer correctly.  */
      /* FIXME: Doesn't handle ranges of enums correctly.  (Can't just
         print with the target type, though, because the size of our type
         and the target type might differ).  */
      /* FALLTHROUGH */

    case TYPE_CODE_INT:
      format = format ? format : output_format;
      if (format)
	{
	  FUNC37 (valaddr + embedded_offset, type, format, 0, stream);
	}
      else
	{
	  FUNC44 (type, valaddr + embedded_offset, stream);
	  /* C and C++ has no single byte int type, char is used instead.
	     Since we don't know whether the value is really intended to
	     be used as an integer or a character, print the character
	     equivalent as well. */
	  if (FUNC12 (type) == 1)
	    {
	      FUNC27 (" ", stream);
	      FUNC2 ((unsigned char) FUNC40 (type, valaddr + embedded_offset),
			     stream);
	    }
	}
      break;

    case TYPE_CODE_CHAR:
      format = format ? format : output_format;
      if (format)
	{
	  FUNC37 (valaddr + embedded_offset, type, format, 0, stream);
	}
      else
	{
	  val = FUNC40 (type, valaddr + embedded_offset);
	  if (FUNC15 (type))
	    FUNC26 (stream, "%u", (unsigned int) val);
	  else
	    FUNC26 (stream, "%d", (int) val);
	  FUNC27 (" ", stream);
	  FUNC2 ((unsigned char) val, stream);
	}
      break;

    case TYPE_CODE_FLT:
      if (format)
	{
	  FUNC37 (valaddr + embedded_offset, type, format, 0, stream);
	}
      else
	{
	  FUNC34 (valaddr + embedded_offset, type, stream);
	}
      break;

    case TYPE_CODE_METHOD:
      {
	struct value *v = FUNC46 (type, address, NULL);
	FUNC22 (FUNC16 (FUNC45 (v)),
			       FUNC30 (type), stream);
	break;
      }

    case TYPE_CODE_VOID:
      FUNC26 (stream, "void");
      break;

    case TYPE_CODE_ERROR:
      FUNC26 (stream, "<error type>");
      break;

    case TYPE_CODE_UNDEF:
      /* This happens (without TYPE_FLAG_STUB set) on systems which don't use
         dbx xrefs (NO_DBX_XREFS in gcc) if a file has a "struct foo *bar"
         and no complete type for struct foo in that file.  */
      FUNC26 (stream, "<incomplete type>");
      break;

    case TYPE_CODE_COMPLEX:
      if (format)
	FUNC37 (valaddr + embedded_offset,
				FUNC14 (type),
				format, 0, stream);
      else
	FUNC34 (valaddr + embedded_offset, FUNC14 (type),
			stream);
      FUNC26 (stream, " + ");
      if (format)
	FUNC37 (valaddr + embedded_offset
				+ FUNC12 (FUNC14 (type)),
				FUNC14 (type),
				format, 0, stream);
      else
	FUNC34 (valaddr + embedded_offset
			+ FUNC12 (FUNC14 (type)),
			FUNC14 (type),
			stream);
      FUNC26 (stream, " * I");
      break;

    default:
      FUNC24 ("Invalid C/C++ type code %d in symbol table.", FUNC7 (type));
    }
  FUNC28 (stream);
  return (0);
}