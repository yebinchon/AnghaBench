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
typedef  void* tree ;
struct c_expr {void* original_code; void* value; } ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ id_kind; void* value; } ;

/* Variables and functions */
 scalar_t__ CPP_CLOSE_SQUARE ; 
 scalar_t__ CPP_COLON ; 
 scalar_t__ CPP_COMMA ; 
 scalar_t__ CPP_DOT ; 
 scalar_t__ CPP_ELLIPSIS ; 
 scalar_t__ CPP_EQ ; 
 scalar_t__ CPP_NAME ; 
 scalar_t__ CPP_OPEN_SQUARE ; 
 scalar_t__ C_ID_CLASSNAME ; 
 scalar_t__ C_ID_TYPENAME ; 
 void* ERROR_MARK ; 
 void* NULL_TREE ; 
 void* FUNC0 (void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct c_expr FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct c_expr*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 struct c_expr FUNC12 (struct c_expr) ; 
 void* error_mark_node ; 
 int /*<<< orphan*/  flag_isoc99 ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 void* FUNC14 (void*) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct c_expr) ; 
 int /*<<< orphan*/  FUNC17 (void*,void*) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 

__attribute__((used)) static void
FUNC19 (c_parser *parser)
{
  /* Parse any designator or designator list.  A single array
     designator may have the subsequent "=" omitted in GNU C, but a
     longer list or a structure member designator may not.  */
  if (FUNC7 (parser, CPP_NAME)
      && FUNC9 (parser)->type == CPP_COLON)
    {
      /* Old-style structure member designator.  */
      FUNC18 (FUNC10 (parser)->value);
      if (pedantic)
	FUNC15 ("obsolete use of designated initializer with %<:%>");
      FUNC3 (parser);
      FUNC3 (parser);
    }
  else
    {
      /* des_seen is 0 if there have been no designators, 1 if there
	 has been a single array designator and 2 otherwise.  */
      int des_seen = 0;
      while (FUNC7 (parser, CPP_OPEN_SQUARE)
	     || FUNC7 (parser, CPP_DOT))
	{
	  int des_prev = des_seen;
	  if (des_seen < 2)
	    des_seen++;
	  if (FUNC7 (parser, CPP_DOT))
	    {
	      des_seen = 2;
	      FUNC3 (parser);
	      if (FUNC7 (parser, CPP_NAME))
		{
		  FUNC18 (FUNC10 (parser)->value);
		  FUNC3 (parser);
		}
	      else
		{
		  struct c_expr init;
		  init.value = error_mark_node;
		  init.original_code = ERROR_MARK;
		  FUNC4 (parser, "expected identifier");
		  FUNC11 (parser, CPP_COMMA, NULL);
		  FUNC16 (init);
		  return;
		}
	    }
	  else
	    {
	      tree first, second;
	      /* ??? Following the old parser, [ objc-receiver
		 objc-message-args ] is accepted as an initializer,
		 being distinguished from a designator by what follows
		 the first assignment expression inside the square
		 brackets, but after a first array designator a
		 subsequent square bracket is for Objective-C taken to
		 start an expression, using the obsolete form of
		 designated initializer without '=', rather than
		 possibly being a second level of designation: in LALR
		 terms, the '[' is shifted rather than reducing
		 designator to designator-list.  */
	      if (des_prev == 1 && FUNC2 ())
		{
		  des_seen = des_prev;
		  break;
		}
	      if (des_prev == 0 && FUNC2 ())
		{
		  /* This might be an array designator or an
		     Objective-C message expression.  If the former,
		     continue parsing here; if the latter, parse the
		     remainder of the initializer given the starting
		     primary-expression.  ??? It might make sense to
		     distinguish when des_prev == 1 as well; see
		     previous comment.  */
		  tree rec, args;
		  struct c_expr mexpr;
		  FUNC3 (parser);
		  if (FUNC10 (parser)->type == CPP_NAME
		      && ((FUNC10 (parser)->id_kind
			   == C_ID_TYPENAME)
			  || (FUNC10 (parser)->id_kind
			      == C_ID_CLASSNAME)))
		    {
		      /* Type name receiver.  */
		      tree id = FUNC10 (parser)->value;
		      FUNC3 (parser);
		      rec = FUNC14 (id);
		      goto parse_message_args;
		    }
		  first = FUNC5 (parser, NULL).value;
		  if (FUNC7 (parser, CPP_ELLIPSIS)
		      || FUNC7 (parser, CPP_CLOSE_SQUARE))
		    goto array_desig_after_first;
		  /* Expression receiver.  So far only one part
		     without commas has been parsed; there might be
		     more of the expression.  */
		  rec = first;
		  while (FUNC7 (parser, CPP_COMMA))
		    {
		      struct c_expr next;
		      FUNC3 (parser);
		      next = FUNC5 (parser, NULL);
		      next = FUNC12 (next);
		      rec = FUNC0 (rec, next.value);
		    }
		parse_message_args:
		  /* Now parse the objc-message-args.  */
		  args = FUNC8 (parser);
		  FUNC11 (parser, CPP_CLOSE_SQUARE,
					     "expected %<]%>");
		  mexpr.value
		    = FUNC13 (FUNC1 (rec, args));
		  mexpr.original_code = ERROR_MARK;
		  /* Now parse and process the remainder of the
		     initializer, starting with this message
		     expression as a primary-expression.  */
		  FUNC6 (parser, &mexpr);
		  return;
		}
	      FUNC3 (parser);
	      first = FUNC5 (parser, NULL).value;
	    array_desig_after_first:
	      if (FUNC7 (parser, CPP_ELLIPSIS))
		{
		  FUNC3 (parser);
		  second = FUNC5 (parser, NULL).value;
		}
	      else
		second = NULL_TREE;
	      if (FUNC7 (parser, CPP_CLOSE_SQUARE))
		{
		  FUNC3 (parser);
		  FUNC17 (first, second);
		  if (pedantic && second)
		    FUNC15 ("ISO C forbids specifying range of "
			     "elements to initialize");
		}
	      else
		FUNC11 (parser, CPP_CLOSE_SQUARE,
					   "expected %<]%>");
	    }
	}
      if (des_seen >= 1)
	{
	  if (FUNC7 (parser, CPP_EQ))
	    {
	      if (pedantic && !flag_isoc99)
		FUNC15 ("ISO C90 forbids specifying subobject to initialize");
	      FUNC3 (parser);
	    }
	  else
	    {
	      if (des_seen == 1)
		{
		  if (pedantic)
		    FUNC15 ("obsolete use of designated initializer "
			     "without %<=%>");
		}
	      else
		{
		  struct c_expr init;
		  init.value = error_mark_node;
		  init.original_code = ERROR_MARK;
		  FUNC4 (parser, "expected %<=%>");
		  FUNC11 (parser, CPP_COMMA, NULL);
		  FUNC16 (init);
		  return;
		}
	    }
	}
    }
  FUNC6 (parser, NULL);
}