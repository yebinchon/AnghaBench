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
struct stab_handle {void* self_crossref; } ;
typedef  enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef  scalar_t__ debug_type ;
typedef  void* bfd_boolean ;

/* Variables and functions */
 int DEBUG_KIND_ENUM ; 
 int DEBUG_KIND_STRUCT ; 
 int DEBUG_KIND_UNION ; 
 int /*<<< orphan*/  DEBUG_KIND_VOID ; 
 scalar_t__ DEBUG_TYPE_NULL ; 
 void* FALSE ; 
 scalar_t__ FUNC0 (char const) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__) ; 
 scalar_t__ FUNC5 (void*,scalar_t__) ; 
 scalar_t__ FUNC6 (void*,scalar_t__,scalar_t__*,void*) ; 
 scalar_t__ FUNC7 (void*,scalar_t__,scalar_t__,scalar_t__*,void*) ; 
 scalar_t__ FUNC8 (void*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (void*,scalar_t__) ; 
 scalar_t__ FUNC10 (void*,scalar_t__) ; 
 scalar_t__ FUNC11 (void*,scalar_t__,void*) ; 
 scalar_t__ FUNC12 (void*) ; 
 scalar_t__ FUNC13 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (void*,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC15 (void*,struct stab_handle*,char const**,void*) ; 
 scalar_t__ FUNC16 (void*,char const**) ; 
 scalar_t__ FUNC17 (void*,struct stab_handle*,char const*,char const**,int*) ; 
 scalar_t__ FUNC18 (void*,struct stab_handle*,char const*,char const**,int,int*) ; 
 scalar_t__ FUNC19 (void*,char const**) ; 
 scalar_t__ FUNC20 (void*,char const**) ; 
 int /*<<< orphan*/  FUNC21 (char const**,int*) ; 
 scalar_t__* FUNC22 (struct stab_handle*,int*) ; 
 scalar_t__ FUNC23 (void*,struct stab_handle*,char const*,int,int) ; 
 scalar_t__ FUNC24 (void*,struct stab_handle*,int*) ; 
 int /*<<< orphan*/  FUNC25 (void*,struct stab_handle*,int*,scalar_t__) ; 
 char* FUNC26 (char const*,char) ; 
 int /*<<< orphan*/  FUNC27 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC28 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (unsigned int) ; 
 scalar_t__ FUNC30 (scalar_t__*,unsigned int) ; 

__attribute__((used)) static debug_type
FUNC31 (void *dhandle, struct stab_handle *info, const char *typename, const char **pp, debug_type **slotp)
{
  const char *orig;
  int typenums[2];
  int size;
  bfd_boolean stringp;
  int descriptor;
  debug_type dtype;

  if (slotp != NULL)
    *slotp = NULL;

  orig = *pp;

  size = -1;
  stringp = FALSE;

  info->self_crossref = FALSE;

  /* Read type number if present.  The type number may be omitted.
     for instance in a two-dimensional array declared with type
     "ar1;1;10;ar1;1;10;4".  */
  if (! FUNC0 (**pp) && **pp != '(' && **pp != '-')
    {
      /* 'typenums=' not present, type is anonymous.  Read and return
	 the definition, but don't put it in the type vector.  */
      typenums[0] = typenums[1] = -1;
    }
  else
    {
      if (! FUNC21 (pp, typenums))
	return DEBUG_TYPE_NULL;

      if (**pp != '=')
	/* Type is not being defined here.  Either it already
	   exists, or this is a forward reference to it.  */
	return FUNC24 (dhandle, info, typenums);

      /* Only set the slot if the type is being defined.  This means
         that the mapping from type numbers to types will only record
         the name of the typedef which defines a type.  If we don't do
         this, then something like
	     typedef int foo;
	     int i;
	 will record that i is of type foo.  Unfortunately, stabs
	 information is ambiguous about variable types.  For this code,
	     typedef int foo;
	     int i;
	     foo j;
	 the stabs information records both i and j as having the same
	 type.  This could be fixed by patching the compiler.  */
      if (slotp != NULL && typenums[0] >= 0 && typenums[1] >= 0)
	*slotp = FUNC22 (info, typenums);

      /* Type is being defined here.  */
      /* Skip the '='.  */
      ++*pp;

      while (**pp == '@')
	{
	  const char *p = *pp + 1;
	  const char *attr;

	  if (FUNC0 (*p) || *p == '(' || *p == '-')
	    /* Member type.  */
	    break;

	  /* Type attributes.  */
	  attr = p;

	  for (; *p != ';'; ++p)
	    {
	      if (*p == '\0')
		{
		  FUNC3 (orig);
		  return DEBUG_TYPE_NULL;
		}
	    }
	  *pp = p + 1;

	  switch (*attr)
	    {
	    case 's':
	      size = FUNC2 (attr + 1);
	      size /= 8;  /* Size is in bits.  We store it in bytes.  */
	      if (size <= 0)
		size = -1;
	      break;

	    case 'S':
	      stringp = TRUE;
	      break;

	    default:
	      /* Ignore unrecognized type attributes, so future
		 compilers can invent new ones.  */
	      break;
	    }
	}
    }

  descriptor = **pp;
  ++*pp;

  switch (descriptor)
    {
    case 'x':
      {
	enum debug_type_kind code;
	const char *q1, *q2, *p;

	/* A cross reference to another type.  */
	switch (**pp)
	  {
	  case 's':
	    code = DEBUG_KIND_STRUCT;
	    break;
	  case 'u':
	    code = DEBUG_KIND_UNION;
	    break;
	  case 'e':
	    code = DEBUG_KIND_ENUM;
	    break;
	  default:
	    /* Complain and keep going, so compilers can invent new
	       cross-reference types.  */
	    FUNC28 (orig, FUNC1("unrecognized cross reference type"));
	    code = DEBUG_KIND_STRUCT;
	    break;
	  }
	++*pp;

	q1 = FUNC26 (*pp, '<');
	p = FUNC26 (*pp, ':');
	if (p == NULL)
	  {
	    FUNC3 (orig);
	    return DEBUG_TYPE_NULL;
	  }
	if (q1 != NULL && p > q1 && p[1] == ':')
	  {
	    int nest = 0;

	    for (q2 = q1; *q2 != '\0'; ++q2)
	      {
		if (*q2 == '<')
		  ++nest;
		else if (*q2 == '>')
		  --nest;
		else if (*q2 == ':' && nest == 0)
		  break;
	      }
	    p = q2;
	    if (*p != ':')
	      {
		FUNC3 (orig);
		return DEBUG_TYPE_NULL;
	      }
	  }

	/* Some versions of g++ can emit stabs like
	       fleep:T20=xsfleep:
	   which define structures in terms of themselves.  We need to
	   tell the caller to avoid building a circular structure.  */
	if (typename != NULL
	    && FUNC27 (typename, *pp, p - *pp) == 0
	    && typename[p - *pp] == '\0')
	  info->self_crossref = TRUE;

	dtype = FUNC23 (dhandle, info, *pp, p - *pp, code);

	*pp = p + 1;
      }
      break;

    case '-':
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
    case '(':
      {
	const char *hold;
	int xtypenums[2];

	/* This type is defined as another type.  */
	(*pp)--;
	hold = *pp;

	/* Peek ahead at the number to detect void.  */
	if (! FUNC21 (pp, xtypenums))
	  return DEBUG_TYPE_NULL;

	if (typenums[0] == xtypenums[0] && typenums[1] == xtypenums[1])
	  {
	    /* This type is being defined as itself, which means that
               it is void.  */
	    dtype = FUNC12 (dhandle);
	  }
	else
	  {
	    *pp = hold;

	    /* Go back to the number and have parse_stab_type get it.
	       This means that we can deal with something like
	       t(1,2)=(3,4)=... which the Lucid compiler uses.  */
	    dtype = FUNC31 (dhandle, info, (const char *) NULL,
				     pp, (debug_type **) NULL);
	    if (dtype == DEBUG_TYPE_NULL)
	      return DEBUG_TYPE_NULL;
	  }

	if (typenums[0] != -1)
	  {
	    if (! FUNC25 (dhandle, info, typenums, dtype))
	      return DEBUG_TYPE_NULL;
	  }

	break;
      }

    case '*':
      dtype = FUNC9 (dhandle,
				       FUNC31 (dhandle, info,
							(const char *) NULL,
							pp,
							(debug_type **) NULL));
      break;

    case '&':
      /* Reference to another type.  */
      dtype = (FUNC10
	       (dhandle,
		FUNC31 (dhandle, info, (const char *) NULL, pp,
				 (debug_type **) NULL)));
      break;

    case 'f':
      /* Function returning another type.  */
      /* FIXME: gdb checks os9k_stabs here.  */
      dtype = (FUNC6
	       (dhandle,
		FUNC31 (dhandle, info, (const char *) NULL, pp,
				 (debug_type **) NULL),
		(debug_type *) NULL, FALSE));
      break;

    case 'k':
      /* Const qualifier on some type (Sun).  */
      /* FIXME: gdb accepts 'c' here if os9k_stabs.  */
      dtype = FUNC5 (dhandle,
				     FUNC31 (dhandle, info,
						      (const char *) NULL,
						      pp,
						      (debug_type **) NULL));
      break;

    case 'B':
      /* Volatile qual on some type (Sun).  */
      /* FIXME: gdb accepts 'i' here if os9k_stabs.  */
      dtype = (FUNC13
	       (dhandle,
		FUNC31 (dhandle, info, (const char *) NULL, pp,
				 (debug_type **) NULL)));
      break;

    case '@':
      /* Offset (class & variable) type.  This is used for a pointer
         relative to an object.  */
      {
	debug_type domain;
	debug_type memtype;

	/* Member type.  */

	domain = FUNC31 (dhandle, info, (const char *) NULL, pp,
				  (debug_type **) NULL);
	if (domain == DEBUG_TYPE_NULL)
	  return DEBUG_TYPE_NULL;

	if (**pp != ',')
	  {
	    FUNC3 (orig);
	    return DEBUG_TYPE_NULL;
	  }
	++*pp;

	memtype = FUNC31 (dhandle, info, (const char *) NULL, pp,
				   (debug_type **) NULL);
	if (memtype == DEBUG_TYPE_NULL)
	  return DEBUG_TYPE_NULL;

	dtype = FUNC8 (dhandle, domain, memtype);
      }
      break;

    case '#':
      /* Method (class & fn) type.  */
      if (**pp == '#')
	{
	  debug_type return_type;

	  ++*pp;
	  return_type = FUNC31 (dhandle, info, (const char *) NULL,
					 pp, (debug_type **) NULL);
	  if (return_type == DEBUG_TYPE_NULL)
	    return DEBUG_TYPE_NULL;
	  if (**pp != ';')
	    {
	      FUNC3 (orig);
	      return DEBUG_TYPE_NULL;
	    }
	  ++*pp;
	  dtype = FUNC7 (dhandle, return_type,
					  DEBUG_TYPE_NULL,
					  (debug_type *) NULL, FALSE);
	}
      else
	{
	  debug_type domain;
	  debug_type return_type;
	  debug_type *args;
	  unsigned int n;
	  unsigned int alloc;
	  bfd_boolean varargs;

	  domain = FUNC31 (dhandle, info, (const char *) NULL,
				    pp, (debug_type **) NULL);
	  if (domain == DEBUG_TYPE_NULL)
	    return DEBUG_TYPE_NULL;

	  if (**pp != ',')
	    {
	      FUNC3 (orig);
	      return DEBUG_TYPE_NULL;
	    }
	  ++*pp;

	  return_type = FUNC31 (dhandle, info, (const char *) NULL,
					 pp, (debug_type **) NULL);
	  if (return_type == DEBUG_TYPE_NULL)
	    return DEBUG_TYPE_NULL;

	  alloc = 10;
	  args = (debug_type *) FUNC29 (alloc * sizeof *args);
	  n = 0;
	  while (**pp != ';')
	    {
	      if (**pp != ',')
		{
		  FUNC3 (orig);
		  return DEBUG_TYPE_NULL;
		}
	      ++*pp;

	      if (n + 1 >= alloc)
		{
		  alloc += 10;
		  args = ((debug_type *)
			  FUNC30 (args, alloc * sizeof *args));
		}

	      args[n] = FUNC31 (dhandle, info, (const char *) NULL,
					 pp, (debug_type **) NULL);
	      if (args[n] == DEBUG_TYPE_NULL)
		return DEBUG_TYPE_NULL;
	      ++n;
	    }
	  ++*pp;

	  /* If the last type is not void, then this function takes a
	     variable number of arguments.  Otherwise, we must strip
	     the void type.  */
	  if (n == 0
	      || FUNC4 (dhandle, args[n - 1]) != DEBUG_KIND_VOID)
	    varargs = TRUE;
	  else
	    {
	      --n;
	      varargs = FALSE;
	    }

	  args[n] = DEBUG_TYPE_NULL;

	  dtype = FUNC7 (dhandle, return_type, domain, args,
					  varargs);
	}
      break;

    case 'r':
      /* Range type.  */
      dtype = FUNC17 (dhandle, info, typename, pp, typenums);
      break;

    case 'b':
      /* FIXME: gdb checks os9k_stabs here.  */
      /* Sun ACC builtin int type.  */
      dtype = FUNC19 (dhandle, pp);
      break;

    case 'R':
      /* Sun ACC builtin float type.  */
      dtype = FUNC20 (dhandle, pp);
      break;

    case 'e':
      /* Enumeration type.  */
      dtype = FUNC16 (dhandle, pp);
      break;

    case 's':
    case 'u':
      /* Struct or union type.  */
      dtype = FUNC18 (dhandle, info, typename, pp,
				      descriptor == 's', typenums);
      break;

    case 'a':
      /* Array type.  */
      if (**pp != 'r')
	{
	  FUNC3 (orig);
	  return DEBUG_TYPE_NULL;
	}
      ++*pp;

      dtype = FUNC15 (dhandle, info, pp, stringp);
      break;

    case 'S':
      dtype = FUNC11 (dhandle,
				   FUNC31 (dhandle, info,
						    (const char *) NULL,
						    pp,
						    (debug_type **) NULL),
				   stringp);
      break;

    default:
      FUNC3 (orig);
      return DEBUG_TYPE_NULL;
    }

  if (dtype == DEBUG_TYPE_NULL)
    return DEBUG_TYPE_NULL;

  if (typenums[0] != -1)
    {
      if (! FUNC25 (dhandle, info, typenums, dtype))
	return DEBUG_TYPE_NULL;
    }

  if (size != -1)
    {
      if (! FUNC14 (dhandle, dtype, (unsigned int) size))
	return DEBUG_TYPE_NULL;
    }

  return dtype;
}