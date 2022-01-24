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
struct demangle_component {int dummy; } ;
struct d_info {int expansion; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMANGLE_COMPONENT_QUAL_NAME ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (struct d_info*,struct demangle_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct d_info*,int) ; 
 struct demangle_component* FUNC2 (struct d_info*) ; 
 struct demangle_component* FUNC3 (struct d_info*,int /*<<< orphan*/ ,struct demangle_component*,struct demangle_component*) ; 
 struct demangle_component* FUNC4 (struct d_info*,char*,int) ; 
 struct demangle_component* FUNC5 (struct d_info*) ; 
 char FUNC6 (struct d_info*) ; 
 char FUNC7 (struct d_info*) ; 
 struct demangle_component* FUNC8 (struct d_info*,int /*<<< orphan*/ ) ; 
 struct demangle_component* FUNC9 (struct d_info*) ; 
 struct demangle_component* FUNC10 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC11 (struct d_info *di)
{
  char peek = FUNC6 (di);
  struct demangle_component *dc;

  switch (peek)
    {
    case 'N':
      return FUNC5 (di);

    case 'Z':
      return FUNC2 (di);

    case 'L':
      return FUNC10 (di);
	
    case 'S':
      {
	int subst;

	if (FUNC7 (di) != 't')
	  {
	    dc = FUNC8 (di, 0);
	    subst = 1;
	  }
	else
	  {
	    FUNC1 (di, 2);
	    dc = FUNC3 (di, DEMANGLE_COMPONENT_QUAL_NAME,
			      FUNC4 (di, "std", 3),
			      FUNC10 (di));
	    di->expansion += 3;
	    subst = 0;
	  }

	if (FUNC6 (di) != 'I')
	  {
	    /* The grammar does not permit this case to occur if we
	       called d_substitution() above (i.e., subst == 1).  We
	       don't bother to check.  */
	  }
	else
	  {
	    /* This is <template-args>, which means that we just saw
	       <unscoped-template-name>, which is a substitution
	       candidate if we didn't just get it from a
	       substitution.  */
	    if (! subst)
	      {
		if (! FUNC0 (di, dc))
		  return NULL;
	      }
	    dc = FUNC3 (di, DEMANGLE_COMPONENT_TEMPLATE, dc,
			      FUNC9 (di));
	  }

	return dc;
      }

    default:
      dc = FUNC10 (di);
      if (FUNC6 (di) == 'I')
	{
	  /* This is <template-args>, which means that we just saw
	     <unscoped-template-name>, which is a substitution
	     candidate.  */
	  if (! FUNC0 (di, dc))
	    return NULL;
	  dc = FUNC3 (di, DEMANGLE_COMPONENT_TEMPLATE, dc,
			    FUNC9 (di));
	}
      return dc;
    }
}