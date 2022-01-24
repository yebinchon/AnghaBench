#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct c_declspecs {int /*<<< orphan*/  declspecs_seen_p; } ;
struct c_declarator {int dummy; } ;
struct c_arg_info {int dummy; } ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ CPP_CLOSE_SQUARE ; 
 scalar_t__ CPP_MULT ; 
 scalar_t__ CPP_OPEN_PAREN ; 
 scalar_t__ CPP_OPEN_SQUARE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RID_STATIC ; 
 struct c_declarator* FUNC0 (int /*<<< orphan*/ ,struct c_declspecs*,int,int) ; 
 struct c_declarator* FUNC1 (struct c_arg_info*,struct c_declarator*) ; 
 struct c_declspecs* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct c_declspecs*,int,int,int) ; 
 TYPE_2__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct c_arg_info* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 struct c_declarator* FUNC12 (struct c_declarator*,struct c_declarator*,int) ; 

__attribute__((used)) static struct c_declarator *
FUNC13 (c_parser *parser, bool id_present,
				  struct c_declarator *inner)
{
  /* Parse a sequence of array declarators and parameter lists.  */
  if (FUNC7 (parser, CPP_OPEN_SQUARE))
    {
      struct c_declarator *declarator;
      struct c_declspecs *quals_attrs = FUNC2 ();
      bool static_seen;
      bool star_seen;
      tree dimen;
      FUNC4 (parser);
      FUNC5 (parser, quals_attrs, false, false, true);
      static_seen = FUNC8 (parser, RID_STATIC);
      if (static_seen)
	FUNC4 (parser);
      if (static_seen && !quals_attrs->declspecs_seen_p)
	FUNC5 (parser, quals_attrs, false, false, true);
      if (!quals_attrs->declspecs_seen_p)
	quals_attrs = NULL;
      /* If "static" is present, there must be an array dimension.
	 Otherwise, there may be a dimension, "*", or no
	 dimension.  */
      if (static_seen)
	{
	  star_seen = false;
	  dimen = FUNC6 (parser, NULL).value;
	}
      else
	{
	  if (FUNC7 (parser, CPP_CLOSE_SQUARE))
	    {
	      dimen = NULL_TREE;
	      star_seen = false;
	    }
	  else if (FUNC7 (parser, CPP_MULT))
	    {
	      if (FUNC10 (parser)->type == CPP_CLOSE_SQUARE)
		{
		  dimen = NULL_TREE;
		  star_seen = true;
		  FUNC4 (parser);
		}
	      else
		{
		  star_seen = false;
		  dimen = FUNC6 (parser, NULL).value;
		}
	    }
	  else
	    {
	      star_seen = false;
	      dimen = FUNC6 (parser, NULL).value;
	    }
	}
      if (FUNC7 (parser, CPP_CLOSE_SQUARE))
	FUNC4 (parser);
      else
	{
	  FUNC11 (parser, CPP_CLOSE_SQUARE,
				     "expected %<]%>");
	  return NULL;
	}
      declarator = FUNC0 (dimen, quals_attrs, static_seen,
					   star_seen);
      if (declarator == NULL)
	return NULL;
      inner = FUNC12 (declarator, inner, !id_present);
      return FUNC13 (parser, id_present, inner);
    }
  else if (FUNC7 (parser, CPP_OPEN_PAREN))
    {
      tree attrs;
      struct c_arg_info *args;
      FUNC4 (parser);
      attrs = FUNC3 (parser);
      args = FUNC9 (parser, id_present, attrs);
      if (args == NULL)
	return NULL;
      else
	{
	  inner = FUNC1 (args, inner);
	  return FUNC13 (parser, id_present, inner);
	}
    }
  return inner;
}