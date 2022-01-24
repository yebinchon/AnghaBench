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
struct stab_demangle_info {unsigned int typestring_count; int /*<<< orphan*/  dhandle; int /*<<< orphan*/  info; TYPE_1__* typestrings; } ;
typedef  int /*<<< orphan*/ * debug_type ;
typedef  void* bfd_boolean ;
struct TYPE_2__ {char* typestring; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_KIND_CLASS ; 
 int /*<<< orphan*/ * DEBUG_TYPE_NULL ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 void* TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,void*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,void*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,void*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct stab_demangle_info*,char const**,int /*<<< orphan*/ ***,void**) ; 
 unsigned int FUNC12 (char const**) ; 
 int /*<<< orphan*/  FUNC13 (struct stab_demangle_info*,char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (char const**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC15 (struct stab_demangle_info*,char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC17 (char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC18 (struct stab_demangle_info *minfo, const char **pp,
		    debug_type *ptype)
{
  const char *orig;

  orig = *pp;

  switch (**pp)
    {
    case 'P':
    case 'p':
      /* A pointer type.  */
      ++*pp;
      if (! FUNC18 (minfo, pp, ptype))
	return FALSE;
      if (ptype != NULL)
	*ptype = FUNC8 (minfo->dhandle, *ptype);
      break;

    case 'R':
      /* A reference type.  */
      ++*pp;
      if (! FUNC18 (minfo, pp, ptype))
	return FALSE;
      if (ptype != NULL)
	*ptype = FUNC9 (minfo->dhandle, *ptype);
      break;

    case 'A':
      /* An array.  */
      {
	unsigned long high;

	++*pp;
	high = 0;
	while (**pp != '\0' && **pp != '_')
	  {
	    if (! FUNC0 (**pp))
	      {
		FUNC10 (orig);
		return FALSE;
	      }
	    high *= 10;
	    high += **pp - '0';
	    ++*pp;
	  }
	if (**pp != '_')
	  {
	    FUNC10 (orig);
	    return FALSE;
	  }
	++*pp;

	if (! FUNC18 (minfo, pp, ptype))
	  return FALSE;
	if (ptype != NULL)
	  {
	    debug_type int_type;

	    int_type = FUNC1 (minfo->dhandle, "int");
	    if (int_type == NULL)
	      int_type = FUNC5 (minfo->dhandle, 4, FALSE);
	    *ptype = FUNC2 (minfo->dhandle, *ptype, int_type,
					    0, high, FALSE);
	  }
      }
      break;

    case 'T':
      /* A back reference to a remembered type.  */
      {
	unsigned int i;
	const char *p;

	++*pp;
	if (! FUNC14 (pp, &i))
	  {
	    FUNC10 (orig);
	    return FALSE;
	  }
	if (i >= minfo->typestring_count)
	  {
	    FUNC10 (orig);
	    return FALSE;
	  }
	p = minfo->typestrings[i].typestring;
	if (! FUNC18 (minfo, &p, ptype))
	  return FALSE;
      }
      break;

    case 'F':
      /* A function.  */
      {
	debug_type *args;
	bfd_boolean varargs;

	++*pp;
	if (! FUNC11 (minfo, pp,
				  (ptype == NULL
				   ? (debug_type **) NULL
				   : &args),
				  (ptype == NULL
				   ? (bfd_boolean *) NULL
				   : &varargs)))
	  return FALSE;
	if (**pp != '_')
	  {
	    /* cplus_demangle will accept a function without a return
	       type, but I don't know when that will happen, or what
	       to do if it does.  */
	    FUNC10 (orig);
	    return FALSE;
	  }
	++*pp;
	if (! FUNC18 (minfo, pp, ptype))
	  return FALSE;
	if (ptype != NULL)
	  *ptype = FUNC4 (minfo->dhandle, *ptype, args,
					     varargs);

      }
      break;

    case 'M':
    case 'O':
      {
	bfd_boolean memberp, constp, volatilep;
	debug_type class_type = DEBUG_TYPE_NULL;
	debug_type *args;
	bfd_boolean varargs;
	unsigned int n;
	const char *name;

	memberp = **pp == 'M';
	constp = FALSE;
	volatilep = FALSE;
	args = NULL;
	varargs = FALSE;

	++*pp;
	if (FUNC0 (**pp))
	  {
	    n = FUNC12 (pp);
	    if (FUNC17 (*pp) < n)
	      {
		FUNC10 (orig);
		return FALSE;
	      }
	    name = *pp;
	    *pp += n;

	    if (ptype != NULL)
	      {
		class_type = FUNC16 (minfo->dhandle,
						    minfo->info,
						    name, (int) n,
						    DEBUG_KIND_CLASS);
		if (class_type == DEBUG_TYPE_NULL)
		  return FALSE;
	      }
	  }
	else if (**pp == 'Q')
	  {
	    if (! FUNC15 (minfo, pp,
					   (ptype == NULL
					    ? (debug_type *) NULL
					    : &class_type)))
	      return FALSE;
	  }
	else
	  {
	    FUNC10 (orig);
	    return FALSE;
	  }

	if (memberp)
	  {
	    if (**pp == 'C')
	      {
		constp = TRUE;
		++*pp;
	      }
	    else if (**pp == 'V')
	      {
		volatilep = TRUE;
		++*pp;
	      }
	    if (**pp != 'F')
	      {
		FUNC10 (orig);
		return FALSE;
	      }
	    ++*pp;
	    if (! FUNC11 (minfo, pp,
				      (ptype == NULL
				       ? (debug_type **) NULL
				       : &args),
				      (ptype == NULL
				       ? (bfd_boolean *) NULL
				       : &varargs)))
	      return FALSE;
	  }

	if (**pp != '_')
	  {
	    FUNC10 (orig);
	    return FALSE;
	  }
	++*pp;

	if (! FUNC18 (minfo, pp, ptype))
	  return FALSE;

	if (ptype != NULL)
	  {
	    if (! memberp)
	      *ptype = FUNC7 (minfo->dhandle, class_type,
					       *ptype);
	    else
	      {
		/* FIXME: We have no way to record constp or
                   volatilep.  */
		*ptype = FUNC6 (minfo->dhandle, *ptype,
						 class_type, args, varargs);
	      }
	  }
      }
      break;

    case 'G':
      ++*pp;
      if (! FUNC18 (minfo, pp, ptype))
	return FALSE;
      break;

    case 'C':
      ++*pp;
      if (! FUNC18 (minfo, pp, ptype))
	return FALSE;
      if (ptype != NULL)
	*ptype = FUNC3 (minfo->dhandle, *ptype);
      break;

    case 'Q':
      {
	const char *hold;

	hold = *pp;
	if (! FUNC15 (minfo, pp, ptype))
	  return FALSE;
      }
      break;

    default:
      if (! FUNC13 (minfo, pp, ptype))
	return FALSE;
      break;
    }

  return TRUE;
}