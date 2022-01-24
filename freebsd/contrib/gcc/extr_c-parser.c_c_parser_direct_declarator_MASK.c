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
typedef  int /*<<< orphan*/ * tree ;
struct c_declarator {int /*<<< orphan*/  id_loc; } ;
struct c_arg_info {int dummy; } ;
typedef  int /*<<< orphan*/  c_parser ;
typedef  scalar_t__ c_dtr_syn ;
struct TYPE_2__ {scalar_t__ id_kind; int /*<<< orphan*/  location; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  CPP_OPEN_SQUARE ; 
 scalar_t__ C_DTR_ABSTRACT ; 
 scalar_t__ C_DTR_BLOCK ; 
 scalar_t__ C_DTR_NORMAL ; 
 scalar_t__ C_ID_CLASSNAME ; 
 scalar_t__ C_ID_ID ; 
 scalar_t__ C_ID_TYPENAME ; 
 int /*<<< orphan*/  NULL_TREE ; 
 struct c_declarator* FUNC0 (int /*<<< orphan*/ *,struct c_declarator*) ; 
 struct c_declarator* FUNC1 (struct c_arg_info*,struct c_declarator*) ; 
 struct c_declarator* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct c_declarator* FUNC5 (int /*<<< orphan*/ *,int,scalar_t__,int*) ; 
 struct c_declarator* FUNC6 (int /*<<< orphan*/ *,int,struct c_declarator*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 struct c_arg_info* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct c_declarator *
FUNC13 (c_parser *parser, bool type_seen_p, c_dtr_syn kind,
			    bool *seen_id)
{
  /* The direct declarator must start with an identifier (possibly
     omitted) or a parenthesized declarator (possibly abstract).  In
     an ordinary declarator, initial parentheses must start a
     parenthesized declarator.  In an abstract declarator or parameter
     declarator, they could start a parenthesized declarator or a
     parameter list.  To tell which, the open parenthesis and any
     following attributes must be read.  If a declaration specifier
     follows, then it is a parameter list; if the specifier is a
     typedef name, there might be an ambiguity about redeclaring it,
     which is resolved in the direction of treating it as a typedef
     name.  If a close parenthesis follows, it is also an empty
     parameter list, as the syntax does not permit empty abstract
     declarators.  Otherwise, it is a parenthesized declarator (in
     which case the analysis may be repeated inside it, recursively).

     ??? There is an ambiguity in a parameter declaration "int
     (__attribute__((foo)) x)", where x is not a typedef name: it
     could be an abstract declarator for a function, or declare x with
     parentheses.  The proper resolution of this ambiguity needs
     documenting.  At present we follow an accident of the old
     parser's implementation, whereby the first parameter must have
     some declaration specifiers other than just attributes.  Thus as
     a parameter declaration it is treated as a parenthesized
     parameter named x, and as an abstract declarator it is
     rejected.

     ??? Also following the old parser, attributes inside an empty
     parameter list are ignored, making it a list not yielding a
     prototype, rather than giving an error or making it have one
     parameter with implicit type int.

     ??? Also following the old parser, typedef names may be
     redeclared in declarators, but not Objective-C class names.  */

  /* APPLE LOCAL blocks 6339747 */
  if ((kind != C_DTR_ABSTRACT && kind != C_DTR_BLOCK)
      && FUNC8 (parser, CPP_NAME)
      && ((type_seen_p
	   /* APPLE LOCAL begin radar 4281748 */
	   && (FUNC11 (parser)->id_kind == C_ID_TYPENAME
	       || FUNC11 (parser)->id_kind == C_ID_CLASSNAME))
	   /* APPLE LOCAL end radar 4281748 */
	  || FUNC11 (parser)->id_kind == C_ID_ID))
    {
      struct c_declarator *inner
	= FUNC2 (FUNC11 (parser)->value);
      *seen_id = true;
      inner->id_loc = FUNC11 (parser)->location;
      FUNC4 (parser);
      return FUNC6 (parser, *seen_id, inner);
    }

  if (kind != C_DTR_NORMAL
      && FUNC8 (parser, CPP_OPEN_SQUARE))
    {
      struct c_declarator *inner = FUNC2 (NULL_TREE);
      return FUNC6 (parser, *seen_id, inner);
    }

  /* Either we are at the end of an abstract declarator, or we have
     parentheses.  */

  if (FUNC8 (parser, CPP_OPEN_PAREN))
    {
      tree attrs;
      struct c_declarator *inner;
      FUNC4 (parser);
      attrs = FUNC3 (parser);
      if (kind != C_DTR_NORMAL
	  && (FUNC9 (parser)
	      || FUNC8 (parser, CPP_CLOSE_PAREN)))
	{
	  struct c_arg_info *args
	    = FUNC10 (parser, kind == C_DTR_NORMAL,
					 attrs);
	  if (args == NULL)
	    return NULL;
	  else
	    {
	      inner
		= FUNC1 (args,
					     FUNC2 (NULL_TREE));
	      return FUNC6 (parser, *seen_id,
						       inner);
	    }
	}
      /* A parenthesized declarator.  */
      inner = FUNC5 (parser, type_seen_p, kind, seen_id);
      if (inner != NULL && attrs != NULL)
	inner = FUNC0 (attrs, inner);
      if (FUNC8 (parser, CPP_CLOSE_PAREN))
	{
	  FUNC4 (parser);
	  if (inner == NULL)
	    return NULL;
	  else
	    return FUNC6 (parser, *seen_id, inner);
	}
      else
	{
	  FUNC12 (parser, CPP_CLOSE_PAREN,
				     "expected %<)%>");
	  return NULL;
	}
    }
  else
    {
      if (kind == C_DTR_NORMAL)
	{
	  FUNC7 (parser, "expected identifier or %<(%>");
	  return NULL;
	}
      else
	return FUNC2 (NULL_TREE);
    }
}