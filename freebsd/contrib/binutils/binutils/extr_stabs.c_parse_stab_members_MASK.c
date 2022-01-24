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
typedef  enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef  scalar_t__ debug_type ;
typedef  scalar_t__ debug_method_variant ;
typedef  scalar_t__ debug_method ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 scalar_t__ DEBUG_KIND_METHOD ; 
 scalar_t__ DEBUG_METHOD_NULL ; 
 scalar_t__ DEBUG_METHOD_VARIANT_NULL ; 
 scalar_t__ DEBUG_TYPE_NULL ; 
 int DEBUG_VISIBILITY_PRIVATE ; 
 int DEBUG_VISIBILITY_PROTECTED ; 
 int DEBUG_VISIBILITY_PUBLIC ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (void*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void*,scalar_t__) ; 
 scalar_t__ FUNC4 (void*,scalar_t__) ; 
 scalar_t__ FUNC5 (void*,char*,scalar_t__*) ; 
 scalar_t__ FUNC6 (void*,char const*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC7 (void*,char const*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (char const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (void*,struct stab_handle*,scalar_t__,char*,char const*,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC10 (void*,struct stab_handle*,char const*,char const**,scalar_t__**) ; 
 char* FUNC11 (char const*,int) ; 
 scalar_t__ FUNC12 (void*,struct stab_handle*,int const*) ; 
 char* FUNC13 (char const*,char) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*) ; 
 scalar_t__ FUNC17 (unsigned int) ; 
 scalar_t__ FUNC18 (scalar_t__*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC19 (void *dhandle, struct stab_handle *info,
		    const char *tagname, const char **pp,
		    const int *typenums, debug_method **retp)
{
  const char *orig;
  debug_method *methods;
  unsigned int c;
  unsigned int alloc;

  *retp = NULL;

  orig = *pp;

  alloc = 0;
  methods = NULL;
  c = 0;

  while (**pp != ';')
    {
      const char *p;
      char *name;
      debug_method_variant *variants;
      unsigned int cvars;
      unsigned int allocvars;
      debug_type look_ahead_type;

      p = FUNC13 (*pp, ':');
      if (p == NULL || p[1] != ':')
	break;

      /* FIXME: Some systems use something other than '$' here.  */
      if ((*pp)[0] != 'o' || (*pp)[1] != 'p' || (*pp)[2] != '$')
	{
	  name = FUNC11 (*pp, p - *pp);
	  *pp = p + 2;
	}
      else
	{
	  /* This is a completely weird case.  In order to stuff in the
	     names that might contain colons (the usual name delimiter),
	     Mike Tiemann defined a different name format which is
	     signalled if the identifier is "op$".  In that case, the
	     format is "op$::XXXX." where XXXX is the name.  This is
	     used for names like "+" or "=".  YUUUUUUUK!  FIXME!  */
	  *pp = p + 2;
	  for (p = *pp; *p != '.' && *p != '\0'; p++)
	    ;
	  if (*p != '.')
	    {
	      FUNC1 (orig);
	      return FALSE;
	    }
	  name = FUNC11 (*pp, p - *pp);
	  *pp = p + 1;
	}

      allocvars = 10;
      variants = ((debug_method_variant *)
		  FUNC17 (allocvars * sizeof *variants));
      cvars = 0;

      look_ahead_type = DEBUG_TYPE_NULL;

      do
	{
	  debug_type type;
	  bfd_boolean stub;
	  char *argtypes;
	  enum debug_visibility visibility;
	  bfd_boolean constp, volatilep, staticp;
	  bfd_vma voffset;
	  debug_type context;
	  const char *physname;
	  bfd_boolean varargs;

	  if (look_ahead_type != DEBUG_TYPE_NULL)
	    {
	      /* g++ version 1 kludge */
	      type = look_ahead_type;
	      look_ahead_type = DEBUG_TYPE_NULL;
	    }
	  else
	    {
	      type = FUNC10 (dhandle, info, (const char *) NULL, pp,
				      (debug_type **) NULL);
	      if (type == DEBUG_TYPE_NULL)
		return FALSE;
	      if (**pp != ':')
		{
		  FUNC1 (orig);
		  return FALSE;
		}
	    }

	  ++*pp;
	  p = FUNC13 (*pp, ';');
	  if (p == NULL)
	    {
	      FUNC1 (orig);
	      return FALSE;
	    }

	  stub = FALSE;
	  if (FUNC4 (dhandle, type) == DEBUG_KIND_METHOD
	      && FUNC2 (dhandle, type, &varargs) == NULL)
	    stub = TRUE;

	  argtypes = FUNC11 (*pp, p - *pp);
	  *pp = p + 1;

	  switch (**pp)
	    {
	    case '0':
	      visibility = DEBUG_VISIBILITY_PRIVATE;
	      break;
	    case '1':
	      visibility = DEBUG_VISIBILITY_PROTECTED;
	      break;
	    default:
	      visibility = DEBUG_VISIBILITY_PUBLIC;
	      break;
	    }
	  ++*pp;

	  constp = FALSE;
	  volatilep = FALSE;
	  switch (**pp)
	    {
	    case 'A':
	      /* Normal function.  */
	      ++*pp;
	      break;
	    case 'B':
	      /* const member function.  */
	      constp = TRUE;
	      ++*pp;
	      break;
	    case 'C':
	      /* volatile member function.  */
	      volatilep = TRUE;
	      ++*pp;
	      break;
	    case 'D':
	      /* const volatile member function.  */
	      constp = TRUE;
	      volatilep = TRUE;
	      ++*pp;
	      break;
	    case '*':
	    case '?':
	    case '.':
	      /* File compiled with g++ version 1; no information.  */
	      break;
	    default:
	      FUNC16 (orig, FUNC0("const/volatile indicator missing"));
	      break;
	    }

	  staticp = FALSE;
	  switch (**pp)
	    {
	    case '*':
	      /* virtual member function, followed by index.  The sign
		 bit is supposedly set to distinguish
		 pointers-to-methods from virtual function indicies.  */
	      ++*pp;
	      voffset = FUNC8 (pp, (bfd_boolean *) NULL);
	      if (**pp != ';')
		{
		  FUNC1 (orig);
		  return FALSE;
		}
	      ++*pp;
	      voffset &= 0x7fffffff;

	      if (**pp == ';' || **pp == '\0')
		{
		  /* Must be g++ version 1.  */
		  context = DEBUG_TYPE_NULL;
		}
	      else
		{
		  /* Figure out from whence this virtual function
		     came.  It may belong to virtual function table of
		     one of its baseclasses.  */
		  look_ahead_type = FUNC10 (dhandle, info,
						     (const char *) NULL,
						     pp,
						     (debug_type **) NULL);
		  if (**pp == ':')
		    {
		      /* g++ version 1 overloaded methods.  */
		      context = DEBUG_TYPE_NULL;
		    }
		  else
		    {
		      context = look_ahead_type;
		      look_ahead_type = DEBUG_TYPE_NULL;
		      if (**pp != ';')
			{
			  FUNC1 (orig);
			  return FALSE;
			}
		      ++*pp;
		    }
		}
	      break;

	    case '?':
	      /* static member function.  */
	      ++*pp;
	      staticp = TRUE;
	      voffset = 0;
	      context = DEBUG_TYPE_NULL;
	      if (FUNC15 (argtypes, name, FUNC14 (name)) != 0)
		stub = TRUE;
	      break;

	    default:
	      FUNC16 (orig, "member function type missing");
	      voffset = 0;
	      context = DEBUG_TYPE_NULL;
	      break;

	    case '.':
	      ++*pp;
	      voffset = 0;
	      context = DEBUG_TYPE_NULL;
	      break;
	    }

	  /* If the type is not a stub, then the argtypes string is
             the physical name of the function.  Otherwise the
             argtypes string is the mangled form of the argument
             types, and the full type and the physical name must be
             extracted from them.  */
	  if (! stub)
	    physname = argtypes;
	  else
	    {
	      debug_type class_type, return_type;

	      class_type = FUNC12 (dhandle, info, typenums);
	      if (class_type == DEBUG_TYPE_NULL)
		return FALSE;
	      return_type = FUNC3 (dhandle, type);
	      if (return_type == DEBUG_TYPE_NULL)
		{
		  FUNC1 (orig);
		  return FALSE;
		}
	      type = FUNC9 (dhandle, info, class_type, name,
					  tagname, return_type, argtypes,
					  constp, volatilep, &physname);
	      if (type == DEBUG_TYPE_NULL)
		return FALSE;
	    }

	  if (cvars + 1 >= allocvars)
	    {
	      allocvars += 10;
	      variants = ((debug_method_variant *)
			  FUNC18 (variants,
				    allocvars * sizeof *variants));
	    }

	  if (! staticp)
	    variants[cvars] = FUNC6 (dhandle, physname,
							 type, visibility,
							 constp, volatilep,
							 voffset, context);
	  else
	    variants[cvars] = FUNC7 (dhandle,
								physname,
								type,
								visibility,
								constp,
								volatilep);
	  if (variants[cvars] == DEBUG_METHOD_VARIANT_NULL)
	    return FALSE;

	  ++cvars;
	}
      while (**pp != ';' && **pp != '\0');

      variants[cvars] = DEBUG_METHOD_VARIANT_NULL;

      if (**pp != '\0')
	++*pp;

      if (c + 1 >= alloc)
	{
	  alloc += 10;
	  methods = ((debug_method *)
		     FUNC18 (methods, alloc * sizeof *methods));
	}

      methods[c] = FUNC5 (dhandle, name, variants);

      ++c;
    }

  if (methods != NULL)
    methods[c] = DEBUG_METHOD_NULL;

  *retp = methods;

  return TRUE;
}