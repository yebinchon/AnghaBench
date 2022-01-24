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
typedef  int ULONGEST ;
struct TYPE_2__ {int /*<<< orphan*/  la_language; } ;
typedef  int LONGEST ;
typedef  void* CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (struct minimal_symbol*) ; 
 int HOST_CHAR_BIT ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,char*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUIT ; 
 char* FUNC4 (struct minimal_symbol*) ; 
 struct type* FUNC5 (struct symbol*) ; 
 void* FUNC6 (struct minimal_symbol*) ; 
 int TARGET_PTR_BIT ; 
 int const FUNC7 (struct type*) ; 
#define  TYPE_CODE_ARRAY 145 
#define  TYPE_CODE_BITSTRING 144 
#define  TYPE_CODE_BOOL 143 
#define  TYPE_CODE_CHAR 142 
#define  TYPE_CODE_ENUM 141 
#define  TYPE_CODE_ERROR 140 
#define  TYPE_CODE_FLT 139 
#define  TYPE_CODE_FUNC 138 
#define  TYPE_CODE_INT 137 
#define  TYPE_CODE_MEMBER 136 
 int const TYPE_CODE_METHOD ; 
#define  TYPE_CODE_PTR 135 
#define  TYPE_CODE_RANGE 134 
#define  TYPE_CODE_REF 133 
#define  TYPE_CODE_SET 132 
#define  TYPE_CODE_STRUCT 131 
#define  TYPE_CODE_UNDEF 130 
#define  TYPE_CODE_UNION 129 
#define  TYPE_CODE_VOID 128 
 int /*<<< orphan*/  FUNC8 (struct type*) ; 
 int FUNC9 (struct type*,unsigned int) ; 
 char* FUNC10 (struct type*,unsigned int) ; 
 struct type* FUNC11 (struct type*,unsigned int) ; 
 struct type* FUNC12 (struct type*) ; 
 int FUNC13 (struct type*) ; 
 unsigned int FUNC14 (struct type*) ; 
 int /*<<< orphan*/  FUNC15 (struct type*) ; 
 struct type* FUNC16 (struct type*) ; 
 int /*<<< orphan*/  FUNC17 (struct type*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 unsigned int VTBL_FNADDR_OFFSET ; 
 int /*<<< orphan*/  addressprint ; 
 int /*<<< orphan*/  builtin_type_void ; 
 struct type* FUNC18 (struct type*) ; 
 int /*<<< orphan*/  FUNC19 (struct value*,struct ui_file*,int,int,int,int) ; 
 TYPE_1__* current_language ; 
 int /*<<< orphan*/  demangle ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 void* FUNC21 (char*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC23 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC24 (struct ui_file*) ; 
 int FUNC25 (struct type*,int*,int*) ; 
 int /*<<< orphan*/  FUNC26 (struct type*,int*,int*,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  language_m2 ; 
 struct minimal_symbol* FUNC27 (void*) ; 
 struct type* FUNC28 (int /*<<< orphan*/ ) ; 
 struct symbol* FUNC29 (int /*<<< orphan*/ ,struct block*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int output_format ; 
 int /*<<< orphan*/  FUNC30 (struct type*) ; 
 int /*<<< orphan*/  FUNC31 (struct type*) ; 
 int /*<<< orphan*/  FUNC32 (char*,int /*<<< orphan*/ ,struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC33 (char*,struct type*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC34 (struct type*,char*,void*,struct ui_file*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prettyprint_arrays ; 
 int /*<<< orphan*/  FUNC35 (void*,struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (void*,int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC37 (char*,struct type*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC38 (struct ui_file*,char,int /*<<< orphan*/ ,int) ; 
 unsigned int print_max ; 
 int /*<<< orphan*/  FUNC39 (char*,struct type*,int,int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC40 (int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC41 (struct type*,int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  stop_print_at_null ; 
 int /*<<< orphan*/  FUNC43 (struct type*,char*,struct ui_file*,int) ; 
 int /*<<< orphan*/  unionprint ; 
 int FUNC44 (struct type*,char*) ; 
 void* FUNC45 (struct type*,char*) ; 
 int /*<<< orphan*/  FUNC46 (struct type*,char*,void*,struct ui_file*,int,int,int,int,unsigned int) ; 
 unsigned int FUNC47 (void*,int,int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC48 (struct type*,char*,struct ui_file*) ; 
 struct value* FUNC49 (struct type*,void*,int /*<<< orphan*/ *) ; 
 int FUNC50 (struct type*,char*,int) ; 
 int /*<<< orphan*/  vtblprint ; 
 int /*<<< orphan*/  FUNC51 (void*) ; 
 void* FUNC52 (int) ; 

int
FUNC53 (struct type *type, char *valaddr, int embedded_offset,
		  CORE_ADDR address, struct ui_file *stream, int format,
		  int deref_ref, int recurse, enum val_prettyprint pretty)
{
  unsigned int i = 0;	/* Number of characters printed */
  unsigned len;
  struct type *elttype;
  unsigned eltlen;
  int length_pos, length_size, string_pos;
  int char_size;
  LONGEST val;
  CORE_ADDR addr;

  FUNC0 (type);
  switch (FUNC7 (type))
    {
    case TYPE_CODE_ARRAY:
      if (FUNC13 (type) > 0 && FUNC13 (FUNC16 (type)) > 0)
	{
	  elttype = FUNC18 (FUNC16 (type));
	  eltlen = FUNC13 (elttype);
	  len = FUNC13 (type) / eltlen;
	  if (prettyprint_arrays)
	    {
	      FUNC40 (2 + 2 * recurse, stream);
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

	      FUNC3 (stream, valaddr + embedded_offset, len, 1, 0);
	      i = len;
	    }
	  else
	    {
	      FUNC22 (stream, "{");
	      /* If this is a virtual function table, print the 0th
	         entry specially, and the rest of the members normally.  */
	      if (FUNC31 (elttype))
		{
		  i = 1;
		  FUNC22 (stream, "%d vtable entries", len - 1);
		}
	      else
		{
		  i = 0;
		}
	      FUNC46 (type, valaddr + embedded_offset, address, stream,
				     format, deref_ref, recurse, pretty, i);
	      FUNC22 (stream, "}");
	    }
	  break;
	}
      /* Array of unspecified length: treat like pointer to first elt.  */
      addr = address;
      goto print_unpacked_pointer;

    case TYPE_CODE_PTR:
      if (format && format != 's')
	{
	  FUNC39 (valaddr + embedded_offset, type, format, 0, stream);
	  break;
	}
      if (vtblprint && FUNC31 (type))
	{
	  /* Print the unmangled name if desired.  */
	  /* Print vtable entry - we only get here if we ARE using
	     -fvtable_thunks.  (Otherwise, look under TYPE_CODE_STRUCT.) */
	  /* Extract the address, assume that it is unsigned.  */
	  FUNC35 (FUNC21 (valaddr + embedded_offset, FUNC13 (type)),
				  stream, demangle);
	  break;
	}
      elttype = FUNC18 (FUNC16 (type));
      if (FUNC7 (elttype) == TYPE_CODE_METHOD)
	{
	  FUNC33 (valaddr + embedded_offset, type, stream);
	}
      else if (FUNC7 (elttype) == TYPE_CODE_MEMBER)
	{
	  FUNC32 (valaddr + embedded_offset,
				 FUNC8 (FUNC16 (type)),
					    stream, "&");
	}
      else
	{
	  addr = FUNC45 (type, valaddr + embedded_offset);
	print_unpacked_pointer:
	  elttype = FUNC18 (FUNC16 (type));

	  if (FUNC7 (elttype) == TYPE_CODE_FUNC)
	    {
	      /* Try to print what function it points to.  */
	      FUNC35 (addr, stream, demangle);
	      /* Return value is irrelevant except for string pointers.  */
	      return (0);
	    }

	  if (addressprint && format != 's')
	    {
	      FUNC36 (addr, 1, stream);
	    }

	  /* For a pointer to char or unsigned char, also print the string
	     pointed to, unless pointer is null.  */
	  if (FUNC13 (elttype) == 1
	      && FUNC7 (elttype) == TYPE_CODE_INT
	      && (format == 0 || format == 's')
	      && addr != 0)
	    {
	      /* no wide string yet */
	      i = FUNC47 (addr, -1, 1, stream);
	    }
	  /* also for pointers to pascal strings */
	  /* Note: this is Free Pascal specific:
	     as GDB does not recognize stabs pascal strings
	     Pascal strings are mapped to records
	     with lowercase names PM  */
          if (FUNC26 (elttype, &length_pos, &length_size,
                                     &string_pos, &char_size, NULL)
	      && addr != 0)
	    {
	      ULONGEST string_length;
              void *buffer;
              buffer = FUNC52 (length_size);
              FUNC42 (addr + length_pos, buffer, length_size);
	      string_length = FUNC21 (buffer, length_size);
              FUNC51 (buffer);
              i = FUNC47 (addr + string_pos, string_length, char_size, stream);
	    }
	  else if (FUNC30 (type))
	    {
	      /* print vtbl's nicely */
	      CORE_ADDR vt_address = FUNC45 (type, valaddr + embedded_offset);

	      struct minimal_symbol *msymbol =
	      FUNC27 (vt_address);
	      if ((msymbol != NULL)
		  && (vt_address == FUNC6 (msymbol)))
		{
		  FUNC23 (" <", stream);
		  FUNC23 (FUNC4 (msymbol), stream);
		  FUNC23 (">", stream);
		}
	      if (vt_address && vtblprint)
		{
		  struct value *vt_val;
		  struct symbol *wsym = (struct symbol *) NULL;
		  struct type *wtype;
		  struct block *block = (struct block *) NULL;
		  int is_this_fld;

		  if (msymbol != NULL)
		    wsym = FUNC29 (FUNC1 (msymbol), block,
					  VAR_DOMAIN, &is_this_fld, NULL);

		  if (wsym)
		    {
		      wtype = FUNC5 (wsym);
		    }
		  else
		    {
		      wtype = FUNC16 (type);
		    }
		  vt_val = FUNC49 (wtype, vt_address, NULL);
		  FUNC19 (vt_val, stream, format, deref_ref,
				    recurse + 1, pretty);
		  if (pretty)
		    {
		      FUNC22 (stream, "\n");
		      FUNC40 (2 + 2 * recurse, stream);
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
      FUNC20 ("not implemented: member type in pascal_val_print");
      break;

    case TYPE_CODE_REF:
      elttype = FUNC18 (FUNC16 (type));
      if (FUNC7 (elttype) == TYPE_CODE_MEMBER)
	{
	  FUNC32 (valaddr + embedded_offset,
					    FUNC8 (elttype),
					    stream, "");
	  break;
	}
      if (addressprint)
	{
	  FUNC22 (stream, "@");
	  /* Extract the address, assume that it is unsigned.  */
	  FUNC36
	    (FUNC21 (valaddr + embedded_offset,
				       TARGET_PTR_BIT / HOST_CHAR_BIT),
	     1, stream);
	  if (deref_ref)
	    FUNC23 (": ", stream);
	}
      /* De-reference the reference.  */
      if (deref_ref)
	{
	  if (FUNC7 (elttype) != TYPE_CODE_UNDEF)
	    {
	      struct value *deref_val =
	      FUNC49
	      (FUNC16 (type),
	       FUNC45 (FUNC28 (builtin_type_void),
			       valaddr + embedded_offset),
	       NULL);
	      FUNC19 (deref_val, stream, format, deref_ref,
				recurse + 1, pretty);
	    }
	  else
	    FUNC23 ("???", stream);
	}
      break;

    case TYPE_CODE_UNION:
      if (recurse && !unionprint)
	{
	  FUNC22 (stream, "{...}");
	  break;
	}
      /* Fall through.  */
    case TYPE_CODE_STRUCT:
      if (vtblprint && FUNC31 (type))
	{
	  /* Print the unmangled name if desired.  */
	  /* Print vtable entry - we only get here if NOT using
	     -fvtable_thunks.  (Otherwise, look under TYPE_CODE_PTR.) */
	  /* Extract the address, assume that it is unsigned.  */
	  FUNC35
	    (FUNC21 (valaddr + embedded_offset + FUNC9 (type, VTBL_FNADDR_OFFSET) / 8,
				       FUNC13 (FUNC11 (type, VTBL_FNADDR_OFFSET))),
	     stream, demangle);
	}
      else
	{
          if (FUNC26 (type, &length_pos, &length_size,
                                     &string_pos, &char_size, NULL))
	    {
	      len = FUNC21 (valaddr + embedded_offset + length_pos, length_size);
	      FUNC3 (stream, valaddr + embedded_offset + string_pos, len, char_size, 0);
	    }
	  else
	    FUNC34 (type, valaddr + embedded_offset, address, stream, format,
					      recurse, pretty, NULL, 0);
	}
      break;

    case TYPE_CODE_ENUM:
      if (format)
	{
	  FUNC39 (valaddr + embedded_offset, type, format, 0, stream);
	  break;
	}
      len = FUNC14 (type);
      val = FUNC44 (type, valaddr + embedded_offset);
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
	  FUNC23 (FUNC10 (type, i), stream);
	}
      else
	{
	  FUNC38 (stream, 'd', 0, val);
	}
      break;

    case TYPE_CODE_FUNC:
      if (format)
	{
	  FUNC39 (valaddr + embedded_offset, type, format, 0, stream);
	  break;
	}
      /* FIXME, we should consider, at least for ANSI C language, eliminating
         the distinction made between FUNCs and POINTERs to FUNCs.  */
      FUNC22 (stream, "{");
      FUNC43 (type, "", stream, -1);
      FUNC22 (stream, "} ");
      /* Try to print what function it points to, and its address.  */
      FUNC35 (address, stream, demangle);
      break;

    case TYPE_CODE_BOOL:
      format = format ? format : output_format;
      if (format)
	FUNC39 (valaddr + embedded_offset, type, format, 0, stream);
      else
	{
	  val = FUNC44 (type, valaddr + embedded_offset);
	  if (val == 0)
	    FUNC23 ("false", stream);
	  else if (val == 1)
	    FUNC23 ("true", stream);
	  else
	    {
	      FUNC23 ("true (", stream);
	      FUNC22 (stream, "%ld)", (long int) val);
	    }
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
	  FUNC39 (valaddr + embedded_offset, type, format, 0, stream);
	}
      else
	{
	  FUNC48 (type, valaddr + embedded_offset, stream);
	}
      break;

    case TYPE_CODE_CHAR:
      format = format ? format : output_format;
      if (format)
	{
	  FUNC39 (valaddr + embedded_offset, type, format, 0, stream);
	}
      else
	{
	  val = FUNC44 (type, valaddr + embedded_offset);
	  if (FUNC17 (type))
	    FUNC22 (stream, "%u", (unsigned int) val);
	  else
	    FUNC22 (stream, "%d", (int) val);
	  FUNC23 (" ", stream);
	  FUNC2 ((unsigned char) val, stream);
	}
      break;

    case TYPE_CODE_FLT:
      if (format)
	{
	  FUNC39 (valaddr + embedded_offset, type, format, 0, stream);
	}
      else
	{
	  FUNC37 (valaddr + embedded_offset, type, stream);
	}
      break;

    case TYPE_CODE_BITSTRING:
    case TYPE_CODE_SET:
      elttype = FUNC12 (type);
      FUNC0 (elttype);
      if (FUNC15 (elttype))
	{
	  FUNC22 (stream, "<incomplete type>");
	  FUNC24 (stream);
	  break;
	}
      else
	{
	  struct type *range = elttype;
	  LONGEST low_bound, high_bound;
	  int i;
	  int is_bitstring = FUNC7 (type) == TYPE_CODE_BITSTRING;
	  int need_comma = 0;

	  if (is_bitstring)
	    FUNC23 ("B'", stream);
	  else
	    FUNC23 ("[", stream);

	  i = FUNC25 (range, &low_bound, &high_bound);
	maybe_bad_bstring:
	  if (i < 0)
	    {
	      FUNC23 ("<error value>", stream);
	      goto done;
	    }

	  for (i = low_bound; i <= high_bound; i++)
	    {
	      int element = FUNC50 (type, valaddr + embedded_offset, i);
	      if (element < 0)
		{
		  i = element;
		  goto maybe_bad_bstring;
		}
	      if (is_bitstring)
		FUNC22 (stream, "%d", element);
	      else if (element)
		{
		  if (need_comma)
		    FUNC23 (", ", stream);
		  FUNC41 (range, i, stream);
		  need_comma = 1;

		  if (i + 1 <= high_bound && FUNC50 (type, valaddr + embedded_offset, ++i))
		    {
		      int j = i;
		      FUNC23 ("..", stream);
		      while (i + 1 <= high_bound
			     && FUNC50 (type, valaddr + embedded_offset, ++i))
			j = i;
		      FUNC41 (range, j, stream);
		    }
		}
	    }
	done:
	  if (is_bitstring)
	    FUNC23 ("'", stream);
	  else
	    FUNC23 ("]", stream);
	}
      break;

    case TYPE_CODE_VOID:
      FUNC22 (stream, "void");
      break;

    case TYPE_CODE_ERROR:
      FUNC22 (stream, "<error type>");
      break;

    case TYPE_CODE_UNDEF:
      /* This happens (without TYPE_FLAG_STUB set) on systems which don't use
         dbx xrefs (NO_DBX_XREFS in gcc) if a file has a "struct foo *bar"
         and no complete type for struct foo in that file.  */
      FUNC22 (stream, "<incomplete type>");
      break;

    default:
      FUNC20 ("Invalid pascal type code %d in symbol table.", FUNC7 (type));
    }
  FUNC24 (stream);
  return (0);
}