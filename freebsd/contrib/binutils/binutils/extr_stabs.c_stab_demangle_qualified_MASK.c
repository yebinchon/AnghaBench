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
struct stab_demangle_info {int /*<<< orphan*/  info; int /*<<< orphan*/  dhandle; } ;
typedef  scalar_t__ debug_type ;
typedef  scalar_t__ debug_field ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 scalar_t__ const DEBUG_FIELD_NULL ; 
 int /*<<< orphan*/  DEBUG_KIND_CLASS ; 
 int /*<<< orphan*/  DEBUG_KIND_ILLEGAL ; 
 scalar_t__ DEBUG_TYPE_NULL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  TRUE ; 
 unsigned int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__ const) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 unsigned int FUNC9 (char const**) ; 
 int /*<<< orphan*/  FUNC10 (struct stab_demangle_info*,char const**,char**) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 unsigned int FUNC13 (char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC14 (struct stab_demangle_info *minfo, const char **pp,
			 debug_type *ptype)
{
  const char *orig;
  const char *p;
  unsigned int qualifiers;
  debug_type context;

  orig = *pp;

  switch ((*pp)[1])
    {
    case '_':
      /* GNU mangled name with more than 9 classes.  The count is
	 preceded by an underscore (to distinguish it from the <= 9
	 case) and followed by an underscore.  */
      p = *pp + 2;
      if (! FUNC0 (*p) || *p == '0')
	{
	  FUNC8 (orig);
	  return FALSE;
	}
      qualifiers = FUNC1 (p);
      while (FUNC0 (*p))
	++p;
      if (*p != '_')
	{
	  FUNC8 (orig);
	  return FALSE;
	}
      *pp = p + 1;
      break;

    case '1': case '2': case '3': case '4': case '5':
    case '6': case '7': case '8': case '9':
      qualifiers = (*pp)[1] - '0';
      /* Skip an optional underscore after the count.  */
      if ((*pp)[2] == '_')
	++*pp;
      *pp += 2;
      break;

    case '0':
    default:
      FUNC8 (orig);
      return FALSE;
    }

  context = DEBUG_TYPE_NULL;

  /* Pick off the names.  */
  while (qualifiers-- > 0)
    {
      if (**pp == '_')
	++*pp;
      if (**pp == 't')
	{
	  char *name;

	  if (! FUNC10 (minfo, pp,
					ptype != NULL ? &name : NULL))
	    return FALSE;

	  if (ptype != NULL)
	    {
	      context = FUNC11 (minfo->dhandle, minfo->info,
					       name, FUNC13 (name),
					       DEBUG_KIND_CLASS);
	      FUNC6 (name);
	      if (context == DEBUG_TYPE_NULL)
		return FALSE;
	    }
	}
      else
	{
	  unsigned int len;

	  len = FUNC9 (pp);
	  if (FUNC13 (*pp) < len)
	    {
	      FUNC8 (orig);
	      return FALSE;
	    }

	  if (ptype != NULL)
	    {
	      const debug_field *fields;

	      fields = NULL;
	      if (context != DEBUG_TYPE_NULL)
		fields = FUNC4 (minfo->dhandle, context);

	      context = DEBUG_TYPE_NULL;

	      if (fields != NULL)
		{
		  char *name;

		  /* Try to find the type by looking through the
                     fields of context until we find a field with the
                     same type.  This ought to work for a class
                     defined within a class, but it won't work for,
                     e.g., an enum defined within a class.  stabs does
                     not give us enough information to figure out the
                     latter case.  */

		  name = FUNC7 (*pp, len);

		  for (; *fields != DEBUG_FIELD_NULL; fields++)
		    {
		      debug_type ft;
		      const char *dn;

		      ft = FUNC3 (minfo->dhandle, *fields);
		      if (ft == NULL)
			return FALSE;
		      dn = FUNC5 (minfo->dhandle, ft);
		      if (dn != NULL && FUNC12 (dn, name) == 0)
			{
			  context = ft;
			  break;
			}
		    }

		  FUNC6 (name);
		}

	      if (context == DEBUG_TYPE_NULL)
		{
		  /* We have to fall back on finding the type by name.
                     If there are more types to come, then this must
                     be a class.  Otherwise, it could be anything.  */

		  if (qualifiers == 0)
		    {
		      char *name;

		      name = FUNC7 (*pp, len);
		      context = FUNC2 (minfo->dhandle,
						       name);
		      FUNC6 (name);
		    }

		  if (context == DEBUG_TYPE_NULL)
		    {
		      context = FUNC11 (minfo->dhandle,
						       minfo->info,
						       *pp, len,
						       (qualifiers == 0
							? DEBUG_KIND_ILLEGAL
							: DEBUG_KIND_CLASS));
		      if (context == DEBUG_TYPE_NULL)
			return FALSE;
		    }
		}
	    }

	  *pp += len;
	}
    }

  if (ptype != NULL)
    *ptype = context;

  return TRUE;
}