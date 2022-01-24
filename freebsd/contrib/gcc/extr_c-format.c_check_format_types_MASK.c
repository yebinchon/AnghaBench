#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_6__ {scalar_t__ param; scalar_t__ wanted_type; int arg_num; int pointer_count; int /*<<< orphan*/  wanted_type_name; int /*<<< orphan*/  name; scalar_t__ char_lenient_flag; scalar_t__ writing_in_flag; scalar_t__ reading_from_flag; struct TYPE_6__* next; } ;
typedef  TYPE_2__ format_wanted_type ;
struct TYPE_5__ {scalar_t__ (* type_promotes_to ) (scalar_t__) ;} ;
struct TYPE_7__ {scalar_t__ (* types_compatible_p ) (scalar_t__,scalar_t__) ;TYPE_1__ types; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ INTEGER_TYPE ; 
 int /*<<< orphan*/  OPT_Wformat ; 
 scalar_t__ POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ char_type_node ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,int,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 TYPE_3__ lang_hooks ; 
 scalar_t__ pedantic ; 
 scalar_t__ signed_char_type_node ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 scalar_t__ unsigned_char_type_node ; 
 scalar_t__ void_type_node ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC20 (format_wanted_type *types, const char *format_start,
		    int format_length)
{
  for (; types != 0; types = types->next)
    {
      tree cur_param;
      tree cur_type;
      tree orig_cur_type;
      tree wanted_type;
      int arg_num;
      int i;
      int char_type_flag;
      cur_param = types->param;
      cur_type = FUNC6 (cur_param);
      if (cur_type == error_mark_node)
	continue;
      orig_cur_type = cur_type;
      char_type_flag = 0;
      wanted_type = types->wanted_type;
      arg_num = types->arg_num;

      /* The following should not occur here.  */
      FUNC15 (wanted_type);
      FUNC15 (wanted_type != void_type_node || types->pointer_count);

      if (types->pointer_count == 0)
	wanted_type = lang_hooks.types.type_promotes_to (wanted_type);

      wanted_type = FUNC7 (wanted_type);

      FUNC2 (cur_param);

      /* Check the types of any additional pointer arguments
	 that precede the "real" argument.  */
      for (i = 0; i < types->pointer_count; ++i)
	{
	  if (FUNC3 (cur_type) == POINTER_TYPE)
	    {
	      cur_type = FUNC6 (cur_type);
	      if (cur_type == error_mark_node)
		break;

	      /* Check for writing through a NULL pointer.  */
	      if (types->writing_in_flag
		  && i == 0
		  && cur_param != 0
		  && FUNC16 (cur_param))
		FUNC19 (OPT_Wformat, "writing through null pointer "
			 "(argument %d)", arg_num);

	      /* Check for reading through a NULL pointer.  */
	      if (types->reading_from_flag
		  && i == 0
		  && cur_param != 0
		  && FUNC16 (cur_param))
		FUNC19 (OPT_Wformat, "reading through null pointer "
			 "(argument %d)", arg_num);

	      if (cur_param != 0 && FUNC3 (cur_param) == ADDR_EXPR)
		cur_param = FUNC4 (cur_param, 0);
	      else
		cur_param = 0;

	      /* See if this is an attempt to write into a const type with
		 scanf or with printf "%n".  Note: the writing in happens
		 at the first indirection only, if for example
		 void * const * is passed to scanf %p; passing
		 const void ** is simply passing an incompatible type.  */
	      if (types->writing_in_flag
		  && i == 0
		  && (FUNC8 (cur_type)
		      || (cur_param != 0
			  && (FUNC0 (cur_param)
			      || (FUNC1 (cur_param)
				  && FUNC5 (cur_param))))))
		FUNC19 (OPT_Wformat, "writing into constant object "
			 "(argument %d)", arg_num);

	      /* If there are extra type qualifiers beyond the first
		 indirection, then this makes the types technically
		 incompatible.  */
	      if (i > 0
		  && pedantic
		  && (FUNC8 (cur_type)
		      || FUNC11 (cur_type)
		      || FUNC9 (cur_type)))
		FUNC19 (OPT_Wformat, "extra type qualifiers in format "
			 "argument (argument %d)",
			 arg_num);

	    }
	  else
	    {
	      FUNC14 (types->name, format_start, format_length,
				   wanted_type, types->pointer_count,
				   types->wanted_type_name, orig_cur_type,
				   arg_num);
	      break;
	    }
	}

      if (i < types->pointer_count)
	continue;

      cur_type = FUNC7 (cur_type);

      /* Check whether the argument type is a character type.  This leniency
	 only applies to certain formats, flagged with 'c'.
      */
      if (types->char_lenient_flag)
	char_type_flag = (cur_type == char_type_node
			  || cur_type == signed_char_type_node
			  || cur_type == unsigned_char_type_node);

      /* Check the type of the "real" argument, if there's a type we want.  */
      if (lang_hooks.types_compatible_p (wanted_type, cur_type))
	continue;
      /* If we want 'void *', allow any pointer type.
	 (Anything else would already have got a warning.)
	 With -pedantic, only allow pointers to void and to character
	 types.  */
      if (wanted_type == void_type_node
	  && (!pedantic || (i == 1 && char_type_flag)))
	continue;
      /* Don't warn about differences merely in signedness, unless
	 -pedantic.  With -pedantic, warn if the type is a pointer
	 target and not a character type, and for character types at
	 a second level of indirection.  */
      if (FUNC3 (wanted_type) == INTEGER_TYPE
	  && FUNC3 (cur_type) == INTEGER_TYPE
	  && (!pedantic || i == 0 || (i == 1 && char_type_flag))
	  && (FUNC10 (wanted_type)
	      ? wanted_type == FUNC13 (cur_type)
	      : wanted_type == FUNC12 (cur_type)))
	continue;
      /* Likewise, "signed char", "unsigned char" and "char" are
	 equivalent but the above test won't consider them equivalent.  */
      if (wanted_type == char_type_node
	  && (!pedantic || i < 2)
	  && char_type_flag)
	continue;
      /* Now we have a type mismatch.  */
      FUNC14 (types->name, format_start, format_length,
			   wanted_type, types->pointer_count,
			   types->wanted_type_name, orig_cur_type, arg_num);
    }
}