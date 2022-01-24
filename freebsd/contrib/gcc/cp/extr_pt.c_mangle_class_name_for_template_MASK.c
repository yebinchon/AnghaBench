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
typedef  scalar_t__ tree ;
struct obstack {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ TEMPLATE_DECL ; 
 int /*<<< orphan*/  TFF_CHASE_TYPEDEF ; 
 int /*<<< orphan*/  TFF_PLAIN_IDENTIFIER ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 char* FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 char* FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct obstack*) ; 
 scalar_t__ FUNC15 (struct obstack*,int) ; 
 scalar_t__ FUNC16 (struct obstack*) ; 
 int /*<<< orphan*/  FUNC17 (struct obstack*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct obstack*,char*) ; 
 char* FUNC19 (struct obstack*) ; 
 char* FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC21 (const char* name, tree parms, tree arglist)
{
  static struct obstack scratch_obstack;
  static char *scratch_firstobj;
  int i, nparms;

  if (!scratch_firstobj)
    FUNC14 (&scratch_obstack);
  else
    FUNC18 (&scratch_obstack, scratch_firstobj);
  scratch_firstobj = (char *) FUNC15 (&scratch_obstack, 1);

#define ccat(C)	obstack_1grow (&scratch_obstack, (C));
#define cat(S)	obstack_grow (&scratch_obstack, (S), strlen (S))

  cat (name);
  ccat ('<');
  nparms = FUNC8 (parms);
  arglist = FUNC4 (arglist);
  FUNC13 (nparms == FUNC8 (arglist));
  for (i = 0; i < nparms; i++)
    {
      tree parm;
      tree arg;

      parm = FUNC6 (FUNC7 (parms, i));
      arg = FUNC7 (arglist, i);

      if (parm == error_mark_node)
	continue;

      if (i)
	ccat (',');

      if (FUNC5 (parm) == TYPE_DECL)
	{
	  cat (FUNC20 (arg, TFF_CHASE_TYPEDEF));
	  continue;
	}
      else if (FUNC5 (parm) == TEMPLATE_DECL)
	{
	  if (FUNC5 (arg) == TEMPLATE_DECL)
	    {
	      /* Already substituted with real template.  Just output
		 the template name here */
	      tree context = FUNC1 (arg);
	      if (context)
		{
		  /* The template may be defined in a namespace, or
		     may be a member template.  */
		  FUNC13 (FUNC5 (context) == NAMESPACE_DECL
			      || FUNC0 (context));
		  cat (FUNC11 (FUNC1 (arg),
				      TFF_PLAIN_IDENTIFIER));
		  cat ("::");
		}
	      cat (FUNC3 (FUNC2 (arg)));
	    }
	  else
	    /* Output the parameter declaration.  */
	    cat (FUNC20 (arg, TFF_CHASE_TYPEDEF));
	  continue;
	}
      else
	FUNC13 (FUNC5 (parm) == PARM_DECL);

      /* No need to check arglist against parmlist here; we did that
	 in coerce_template_parms, called from lookup_template_class.  */
      cat (FUNC12 (arg, TFF_PLAIN_IDENTIFIER));
    }
  {
    char *bufp = FUNC19 (&scratch_obstack);
    int offset = 0;
    while (bufp[offset - 1] == ' ')
      offset--;
    FUNC17 (&scratch_obstack, offset);

    /* B<C<char> >, not B<C<char>> */
    if (bufp[offset - 1] == '>')
      ccat (' ');
  }
  ccat ('>');
  ccat ('\0');
  return (char *) FUNC16 (&scratch_obstack);
}