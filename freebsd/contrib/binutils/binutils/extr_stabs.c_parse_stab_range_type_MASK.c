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
struct stab_handle {int dummy; } ;
typedef  scalar_t__ debug_type ;
typedef  int bfd_vma ;
typedef  int bfd_signed_vma ;
typedef  int bfd_boolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ DEBUG_TYPE_NULL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LLHIGH ; 
 int /*<<< orphan*/  LLLOW ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  ULLHIGH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (void*,int) ; 
 scalar_t__ FUNC4 (void*,int) ; 
 scalar_t__ FUNC5 (void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (void*,scalar_t__,int,int) ; 
 scalar_t__ FUNC7 (void*) ; 
 int FUNC8 (char const**,int*) ; 
 scalar_t__ FUNC9 (void*,struct stab_handle*,char const*,char const**,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC10 (char const**,int*) ; 
 scalar_t__ FUNC11 (void*,struct stab_handle*,int*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static debug_type
FUNC14 (void *dhandle, struct stab_handle *info, const char *typename, const char **pp, const int *typenums)
{
  const char *orig;
  int rangenums[2];
  bfd_boolean self_subrange;
  debug_type index_type;
  const char *s2, *s3;
  bfd_signed_vma n2, n3;
  bfd_boolean ov2, ov3;

  orig = *pp;

  index_type = DEBUG_TYPE_NULL;

  /* First comes a type we are a subrange of.
     In C it is usually 0, 1 or the type being defined.  */
  if (! FUNC10 (pp, rangenums))
    return DEBUG_TYPE_NULL;

  self_subrange = (rangenums[0] == typenums[0]
		   && rangenums[1] == typenums[1]);

  if (**pp == '=')
    {
      *pp = orig;
      index_type = FUNC9 (dhandle, info, (const char *) NULL,
				    pp, (debug_type **) NULL);
      if (index_type == DEBUG_TYPE_NULL)
	return DEBUG_TYPE_NULL;
    }

  if (**pp == ';')
    ++*pp;

  /* The remaining two operands are usually lower and upper bounds of
     the range.  But in some special cases they mean something else.  */
  s2 = *pp;
  n2 = FUNC8 (pp, &ov2);
  if (**pp != ';')
    {
      FUNC2 (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;

  s3 = *pp;
  n3 = FUNC8 (pp, &ov3);
  if (**pp != ';')
    {
      FUNC2 (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;

  if (ov2 || ov3)
    {
      /* gcc will emit range stabs for long long types.  Handle this
         as a special case.  FIXME: This needs to be more general.  */
#define LLLOW   "01000000000000000000000;"
#define LLHIGH   "0777777777777777777777;"
#define ULLHIGH "01777777777777777777777;"
      if (index_type == DEBUG_TYPE_NULL)
	{
	  if (FUNC0 (s2, LLLOW)
	      && FUNC0 (s3, LLHIGH))
	    return FUNC5 (dhandle, 8, FALSE);
	  if (! ov2
	      && n2 == 0
	      && FUNC0 (s3, ULLHIGH))
	    return FUNC5 (dhandle, 8, TRUE);
	}

      FUNC13 (orig, FUNC1("numeric overflow"));
    }

  if (index_type == DEBUG_TYPE_NULL)
    {
      /* A type defined as a subrange of itself, with both bounds 0,
         is void.  */
      if (self_subrange && n2 == 0 && n3 == 0)
	return FUNC7 (dhandle);

      /* A type defined as a subrange of itself, with n2 positive and
	 n3 zero, is a complex type, and n2 is the number of bytes.  */
      if (self_subrange && n3 == 0 && n2 > 0)
	return FUNC3 (dhandle, n2);

      /* If n3 is zero and n2 is positive, this is a floating point
         type, and n2 is the number of bytes.  */
      if (n3 == 0 && n2 > 0)
	return FUNC4 (dhandle, n2);

      /* If the upper bound is -1, this is an unsigned int.  */
      if (n2 == 0 && n3 == -1)
	{
	  /* When gcc is used with -gstabs, but not -gstabs+, it will emit
	         long long int:t6=r1;0;-1;
		 long long unsigned int:t7=r1;0;-1;
	     We hack here to handle this reasonably.  */
	  if (typename != NULL)
	    {
	      if (FUNC12 (typename, "long long int") == 0)
		return FUNC5 (dhandle, 8, FALSE);
	      else if (FUNC12 (typename, "long long unsigned int") == 0)
		return FUNC5 (dhandle, 8, TRUE);
	    }
	  /* FIXME: The size here really depends upon the target.  */
	  return FUNC5 (dhandle, 4, TRUE);
	}

      /* A range of 0 to 127 is char.  */
      if (self_subrange && n2 == 0 && n3 == 127)
	return FUNC5 (dhandle, 1, FALSE);

      /* FIXME: gdb checks for the language CHILL here.  */

      if (n2 == 0)
	{
	  if (n3 < 0)
	    return FUNC5 (dhandle, - n3, TRUE);
	  else if (n3 == 0xff)
	    return FUNC5 (dhandle, 1, TRUE);
	  else if (n3 == 0xffff)
	    return FUNC5 (dhandle, 2, TRUE);
	  else if (n3 == (bfd_signed_vma) 0xffffffff)
	    return FUNC5 (dhandle, 4, TRUE);
#ifdef BFD64
	  else if (n3 == ((((bfd_signed_vma) 0xffffffff) << 32) | 0xffffffff))
	    return debug_make_int_type (dhandle, 8, TRUE);
#endif
	}
      else if (n3 == 0
	       && n2 < 0
	       && (self_subrange || n2 == -8))
	return FUNC5 (dhandle, - n2, TRUE);
      else if (n2 == - n3 - 1 || n2 == n3 + 1)
	{
	  if (n3 == 0x7f)
	    return FUNC5 (dhandle, 1, FALSE);
	  else if (n3 == 0x7fff)
	    return FUNC5 (dhandle, 2, FALSE);
	  else if (n3 == 0x7fffffff)
	    return FUNC5 (dhandle, 4, FALSE);
#ifdef BFD64
	  else if (n3 == ((((bfd_vma) 0x7fffffff) << 32) | 0xffffffff))
	    return debug_make_int_type (dhandle, 8, FALSE);
#endif
	}
    }

  /* At this point I don't have the faintest idea how to deal with a
     self_subrange type; I'm going to assume that this is used as an
     idiom, and that all of them are special cases.  So . . .  */
  if (self_subrange)
    {
      FUNC2 (orig);
      return DEBUG_TYPE_NULL;
    }

  index_type = FUNC11 (dhandle, info, rangenums);
  if (index_type == DEBUG_TYPE_NULL)
    {
      /* Does this actually ever happen?  Is that why we are worrying
         about dealing with it rather than just calling error_type?  */
      FUNC13 (orig, FUNC1("missing index type"));
      index_type = FUNC5 (dhandle, 4, FALSE);
    }

  return FUNC6 (dhandle, index_type, n2, n3);
}