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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef  scalar_t__ LONGEST ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int HOST_CHAR_BIT ; 
 int /*<<< orphan*/  QUIT ; 
 int TARGET_PTR_BIT ; 
 int const FUNC1 (struct type*) ; 
#define  TYPE_CODE_ARRAY 134 
#define  TYPE_CODE_ENUM 133 
#define  TYPE_CODE_INT 132 
#define  TYPE_CODE_RANGE 131 
#define  TYPE_CODE_REF 130 
#define  TYPE_CODE_STRUCT 129 
 int const TYPE_CODE_UNDEF ; 
#define  TYPE_CODE_UNION 128 
 scalar_t__ FUNC2 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct type*,int) ; 
 unsigned int FUNC5 (struct type*) ; 
 unsigned int FUNC6 (struct type*) ; 
 struct type* FUNC7 (struct type*) ; 
 int /*<<< orphan*/  FUNC8 (struct value*) ; 
 char* FUNC9 (struct value*) ; 
 struct type* FUNC10 (struct value*) ; 
 char* FUNC11 (struct type*,char*) ; 
 struct value* FUNC12 (struct value*) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct type*,scalar_t__) ; 
 scalar_t__ FUNC15 (struct type*) ; 
 int /*<<< orphan*/  FUNC16 (struct type*) ; 
 int /*<<< orphan*/  FUNC17 (struct type*) ; 
 int /*<<< orphan*/  FUNC18 (struct type*) ; 
 scalar_t__ FUNC19 (struct type*) ; 
 int /*<<< orphan*/  FUNC20 (struct type*) ; 
 int /*<<< orphan*/  FUNC21 (struct type*) ; 
 int /*<<< orphan*/  FUNC22 (unsigned char,struct ui_file*) ; 
 struct value* FUNC23 (int /*<<< orphan*/ ) ; 
 struct value* FUNC24 (struct type*) ; 
 int /*<<< orphan*/  addressprint ; 
 int /*<<< orphan*/  builtin_type_char ; 
 int /*<<< orphan*/  builtin_type_int ; 
 struct type* builtin_type_void ; 
 int FUNC25 (struct type*,char*,int,int /*<<< orphan*/ ,struct ui_file*,int,int,int,int) ; 
 struct value* FUNC26 (struct value*,int,struct value**) ; 
 int /*<<< orphan*/  FUNC27 (char*,int,unsigned int) ; 
 struct type* FUNC28 (struct type*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (char*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC33 (char const*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC34 (struct ui_file*) ; 
 int /*<<< orphan*/  FUNC35 (struct type*) ; 
 struct type* FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int output_format ; 
 int /*<<< orphan*/  prettyprint_arrays ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC38 (struct ui_file*,char,int /*<<< orphan*/ ,scalar_t__) ; 
 int print_max ; 
 int /*<<< orphan*/  FUNC39 (struct ui_file*,struct type*) ; 
 int /*<<< orphan*/  FUNC40 (struct type*,char*,struct ui_file*,int,int,int) ; 
 int /*<<< orphan*/  FUNC41 (char*,struct type*,int,int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC42 (int,struct ui_file*) ; 
 struct type* FUNC43 (struct type*,char*) ; 
 int /*<<< orphan*/  FUNC44 (struct ui_file*,char*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  stop_print_at_null ; 
 scalar_t__ FUNC45 (struct type*,char*) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC47 (struct type*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ui_file*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC48 (struct type*,char*,int /*<<< orphan*/ ,struct ui_file*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (struct type*,char*,int /*<<< orphan*/ ,struct ui_file*,int,int,int) ; 
 int /*<<< orphan*/  FUNC50 (struct type*,char*,struct ui_file*) ; 
 struct value* FUNC51 (struct type*,struct value*) ; 
 int /*<<< orphan*/  FUNC52 (struct value*) ; 
 struct value* FUNC53 (struct type*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct value* FUNC55 (struct value*) ; 
 struct value* FUNC56 () ; 

__attribute__((used)) static int
FUNC57 (struct type *type, char *valaddr0, int embedded_offset,
		 CORE_ADDR address, struct ui_file *stream, int format,
		 int deref_ref, int recurse, enum val_prettyprint pretty)
{
  unsigned int len;
  int i;
  struct type *elttype;
  unsigned int eltlen;
  LONGEST val;
  CORE_ADDR addr;
  char *valaddr = valaddr0 + embedded_offset;

  FUNC0 (type);

  if (FUNC15 (type) || FUNC19 (type))
    {
      int retn;
      struct value *mark = FUNC56 ();
      struct value *val;
      val = FUNC53 (type, valaddr, address);
      val = FUNC12 (val);
      if (val == NULL)
	{
	  FUNC32 (stream, "(null)");
	  retn = 0;
	}
      else
	retn = FUNC57 (FUNC10 (val), FUNC9 (val), 0,
				FUNC8 (val), stream, format,
				deref_ref, recurse, pretty);
      FUNC52 (mark);
      return retn;
    }

  valaddr = FUNC11 (type, valaddr);
  embedded_offset -= valaddr - valaddr0 - embedded_offset;
  type = FUNC43 (type, valaddr);

  switch (FUNC1 (type))
    {
    default:
      return FUNC25 (type, valaddr0, embedded_offset, address, stream,
			  format, deref_ref, recurse, pretty);

    case TYPE_CODE_INT:
    case TYPE_CODE_RANGE:
      if (FUNC18 (type))
	{
	  LONGEST v = FUNC45 (type, valaddr);
	  int len = FUNC5 (type);

	  FUNC32 (stream, len < 4 ? "%.11g" : "%.17g",
			    (double) FUNC14 (type, v));
	  return 0;
	}
      else if (FUNC21 (type))
	{
	  struct value *val =
	    FUNC53 (type, valaddr, address);
	  struct value *func = FUNC24 (type);
	  if (func != 0)
	    {
	      static struct type *parray_of_char = NULL;
	      struct value *printable_val;

	      if (parray_of_char == NULL)
		parray_of_char =
		  FUNC36
		  (FUNC29
		   (NULL, builtin_type_char,
		    FUNC30 (NULL, builtin_type_int, 0, 32)), NULL);

	      printable_val =
		FUNC55 (FUNC51 (parray_of_char,
				       FUNC26 (func, 1,
							      &val)));

	      FUNC32 (stream, "%s", FUNC9 (printable_val));
	      return 0;
	    }
	  /* No special printing function.  Do as best we can. */
	}
      else if (FUNC1 (type) == TYPE_CODE_RANGE)
	{
	  struct type *target_type = FUNC7 (type);
	  if (FUNC5 (type) != FUNC5 (target_type))
	    {
	      /* Obscure case of range type that has different length from
	         its base type.  Perform a conversion, or we will get a
	         nonsense value.  Actually, we could use the same
	         code regardless of lengths; I'm just avoiding a cast. */
	      struct value *v = FUNC51 (target_type,
					    FUNC53
					    (type, valaddr, 0));
	      return FUNC57 (target_type, FUNC9 (v), 0, 0,
				      stream, format, 0, recurse + 1, pretty);
	    }
	  else
	    return FUNC57 (FUNC7 (type),
				    valaddr0, embedded_offset,
				    address, stream, format, deref_ref,
				    recurse, pretty);
	}
      else
	{
	  format = format ? format : output_format;
	  if (format)
	    {
	      FUNC41 (valaddr, type, format, 0, stream);
	    }
	  else
	    {
	      FUNC50 (type, valaddr, stream);
	      if (FUNC17 (type))
		{
		  FUNC33 (" ", stream);
		  FUNC22 ((unsigned char) FUNC45 (type, valaddr),
				 stream);
		}
	    }
	  return 0;
	}

    case TYPE_CODE_ENUM:
      if (format)
	{
	  FUNC41 (valaddr, type, format, 0, stream);
	  break;
	}
      len = FUNC6 (type);
      val = FUNC45 (type, valaddr);
      for (i = 0; i < len; i++)
	{
	  QUIT;
	  if (val == FUNC2 (type, i))
	    {
	      break;
	    }
	}
      if (i < len)
	{
	  const char *name = FUNC13 (FUNC4 (type, i));
	  if (name[0] == '\'')
	    FUNC32 (stream, "%ld %s", (long) val, name);
	  else
	    FUNC33 (name, stream);
	}
      else
	{
	  FUNC38 (stream, 'd', 0, val);
	}
      break;

    case TYPE_CODE_UNION:
    case TYPE_CODE_STRUCT:
      if (FUNC16 (type))
	{
	  FUNC32 (stream, "(...?)");
	  return 0;
	}
      else
	{
	  FUNC40 (type, valaddr, stream, format, recurse, pretty);
	  return 0;
	}

    case TYPE_CODE_ARRAY:
      if (FUNC5 (type) > 0 && FUNC5 (FUNC7 (type)) > 0)
	{
	  elttype = FUNC7 (type);
	  eltlen = FUNC5 (elttype);
	  len = FUNC5 (type) / eltlen;

	  /* For an array of chars, print with string syntax.  */
	  if (FUNC20 (type) && (format == 0 || format == 's'))
	    {
	      if (prettyprint_arrays)
		{
		  FUNC42 (2 + 2 * recurse, stream);
		}
	      /* If requested, look for the first null char and only print
	         elements up to it.  */
	      if (stop_print_at_null)
		{
		  int temp_len;

		  /* Look for a NULL char. */
		  for (temp_len = 0;
		       temp_len < len && temp_len < print_max
		       && FUNC27 (valaddr, temp_len, eltlen) != 0;
		       temp_len += 1);
		  len = temp_len;
		}

	      FUNC44 (stream, valaddr, len, 0, eltlen);
	    }
	  else
	    {
	      len = 0;
	      FUNC32 (stream, "(");
	      FUNC39 (stream, type);
	      if (FUNC3 (type, 0) > 0)
		FUNC49 (type, valaddr, 0, stream,
						 format, recurse, pretty);
	      else
		FUNC48 (type, valaddr, address, stream,
					  format, deref_ref, recurse,
					  pretty, 0);
	      FUNC32 (stream, ")");
	    }
	  FUNC34 (stream);
	  return len;
	}

    case TYPE_CODE_REF:
      elttype = FUNC28 (FUNC7 (type));
      if (addressprint)
	{
	  FUNC32 (stream, "@");
	  /* Extract an address, assume that the address is unsigned.  */
	  FUNC37
	    (FUNC31 (valaddr,
				       TARGET_PTR_BIT / HOST_CHAR_BIT),
	     1, stream);
	  if (deref_ref)
	    FUNC33 (": ", stream);
	}
      /* De-reference the reference */
      if (deref_ref)
	{
	  if (FUNC1 (elttype) != TYPE_CODE_UNDEF)
	    {
	      LONGEST deref_val_int = (LONGEST)
		FUNC46 (FUNC35 (builtin_type_void),
				valaddr);
	      if (deref_val_int != 0)
		{
		  struct value *deref_val =
		    FUNC23 (FUNC54
				   (FUNC35 (elttype),
				    deref_val_int));
		  FUNC47 (FUNC10 (deref_val),
			     FUNC9 (deref_val), 0,
			     FUNC8 (deref_val), stream, format,
			     deref_ref, recurse + 1, pretty);
		}
	      else
		FUNC33 ("(null)", stream);
	    }
	  else
	    FUNC33 ("???", stream);
	}
      break;
    }
  return 0;
}