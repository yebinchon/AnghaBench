#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct c_expr {scalar_t__ value; } ;
struct c_declspecs {scalar_t__ attrs; int /*<<< orphan*/  declspecs_seen_p; scalar_t__ type_seen_p; scalar_t__ non_sc_seen_p; } ;
struct c_declarator {TYPE_1__* declarator; } ;
struct TYPE_21__ {scalar_t__ error; } ;
typedef  TYPE_2__ c_parser ;
struct TYPE_22__ {scalar_t__ location; } ;
struct TYPE_20__ {scalar_t__ kind; } ;
typedef  scalar_t__ DECL_SOURCE_LOCATION ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_COMMA ; 
 int /*<<< orphan*/  CPP_EOF ; 
 int /*<<< orphan*/  CPP_EQ ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 int /*<<< orphan*/  C_DTR_NORMAL ; 
 int /*<<< orphan*/  DECL_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  RID_ASM ; 
 int /*<<< orphan*/  RID_ATTRIBUTE ; 
 int /*<<< orphan*/  RID_AT_IMPLEMENTATION ; 
 int /*<<< orphan*/  RID_AT_INTERFACE ; 
 int /*<<< orphan*/  RID_AT_PROTOCOL ; 
 int /*<<< orphan*/  RID_IN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct c_declspecs* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__* FUNC4 () ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 struct c_declarator* FUNC8 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct c_declspecs*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 struct c_expr FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,scalar_t__) ; 
 TYPE_5__* FUNC17 (TYPE_2__*) ; 
 scalar_t__ FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 scalar_t__ cdk_block_pointer ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct c_declspecs*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 scalar_t__ flag_nested_functions ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,struct c_expr) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (struct c_declspecs*) ; 
 int /*<<< orphan*/  FUNC34 (struct c_declspecs*,int) ; 
 scalar_t__ FUNC35 (struct c_declarator*,struct c_declspecs*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (struct c_declspecs*,struct c_declarator*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC37 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 () ; 

__attribute__((used)) static void
FUNC39 (c_parser *parser, bool fndef_ok, bool empty_ok,
			       /* APPLE LOCAL radar 4708210 (for_objc_collection in 4.2) */
			       bool nested, bool start_attr_ok, tree *foreach_elem)
{
  struct c_declspecs *specs;
  tree prefix_attrs;
  tree all_prefix_attrs;
  bool diagnosed_no_specs = false;

  specs = FUNC2 ();
  FUNC9 (parser, specs, true, true, start_attr_ok);
  if (parser->error)
    {
      FUNC19 (parser);
      return;
    }
  if (nested && !specs->declspecs_seen_p)
    {
      FUNC10 (parser, "expected declaration specifiers");
      FUNC19 (parser);
      return;
    }
  FUNC23 (specs);
  if (FUNC12 (parser, CPP_SEMICOLON))
    {
      if (empty_ok)
	FUNC33 (specs);
      else
	{
	  FUNC34 (specs, 1);
	  FUNC29 ("empty declaration");
	}
      FUNC7 (parser);
      return;
    }
  /* APPLE LOCAL begin radar 4548636 - class attributes. */
  else if (FUNC13 (parser, RID_AT_INTERFACE) 
	   || FUNC13 (parser, RID_AT_IMPLEMENTATION))
    {
      FUNC26 (FUNC4 ());
      if (!specs->declspecs_seen_p || specs->attrs == NULL_TREE
	  || specs->type_seen_p || specs->non_sc_seen_p)
	FUNC10 (parser, "no type or storage class may be specified here");
      FUNC15 (parser, specs->attrs);
      return;
    }
  /* APPLE LOCAL end radar 4548636 - class attributes. */
  /* APPLE LOCAL begin radar 4947311 - protocol attributes */
  else if (FUNC13 (parser, RID_AT_PROTOCOL))
    {
      FUNC26 (FUNC4 ());
      if (!specs->declspecs_seen_p || specs->attrs == NULL_TREE
	  || specs->type_seen_p || specs->non_sc_seen_p)
	FUNC10 (parser, "no type or storage class may be specified here");
      FUNC16 (parser, specs->attrs);
      return;
    }
  /* APPLE LOCAL end radar 4947311 - protocol attributes */
  FUNC30 ();
  prefix_attrs = specs->attrs;
  all_prefix_attrs = prefix_attrs;
  specs->attrs = NULL_TREE;
  while (true)
    {
      struct c_declarator *declarator;
      bool dummy = false;
      tree fnbody;
      /* Declaring either one or more declarators (in which case we
	 should diagnose if there were no declaration specifiers) or a
	 function definition (in which case the diagnostic for
	 implicit int suffices).  */
      declarator = FUNC8 (parser, specs->type_seen_p,
					C_DTR_NORMAL, &dummy);
      if (declarator == NULL)
	{
	  FUNC19 (parser);
	  return;
	}
      if (FUNC12 (parser, CPP_EQ)
	  || FUNC12 (parser, CPP_COMMA)
	  || FUNC12 (parser, CPP_SEMICOLON)
	  || FUNC13 (parser, RID_ASM)
	  /* APPLE LOCAL radar 4708210 (for_objc_collection in 4.2) */
	  || FUNC13 (parser, RID_IN)
	  || FUNC13 (parser, RID_ATTRIBUTE))
	{
	  tree asm_name = NULL_TREE;
	  tree postfix_attrs = NULL_TREE;
	  if (!diagnosed_no_specs && !specs->declspecs_seen_p)
	    {
	      diagnosed_no_specs = true;
	      FUNC29 ("data definition has no type or storage class");
	    }
	  /* Having seen a data definition, there cannot now be a
	     function definition.  */
	  fndef_ok = false;
	  if (FUNC13 (parser, RID_ASM))
	    asm_name = FUNC18 (parser);
	  if (FUNC13 (parser, RID_ATTRIBUTE))
	    postfix_attrs = FUNC5 (parser);
	  /* APPLE LOCAL begin radar 4708210 (for_objc_collection in 4.2) */
	  if (FUNC13 (parser, RID_IN))
	    {
	      FUNC26 (foreach_elem);
	      *foreach_elem = FUNC35 (declarator, specs, true,
					  FUNC20 (postfix_attrs, all_prefix_attrs));
	      if (!*foreach_elem)
		*foreach_elem = error_mark_node;
	      FUNC37 (*foreach_elem, asm_name, FUNC27 ());	
	      return;
	    }
	  /* APPLE LOCAL end radar 4708210 (for_objc_collection in 4.2) */
	  if (FUNC12 (parser, CPP_EQ))
	    {
	      tree d;
	      struct c_expr init;
	      FUNC7 (parser);
	      /* The declaration of the variable is in effect while
		 its initializer is parsed.  */
	      d = FUNC35 (declarator, specs, true,
			      FUNC20 (postfix_attrs, all_prefix_attrs));
	      if (!d)
		d = error_mark_node;
	      FUNC37 (d, asm_name, FUNC27 ());
	      init = FUNC11 (parser);
	      FUNC25 ();
	      if (d != error_mark_node)
		{
		  FUNC28 (FUNC0 (d), init);
		  FUNC22 (d, init.value, asm_name);
		}
	    }
	  else
	    {
	      tree d = FUNC35 (declarator, specs, false,
				   FUNC20 (postfix_attrs,
					    all_prefix_attrs));
	      if (d)
		FUNC22 (d, NULL_TREE, asm_name);
	    }
	  if (FUNC12 (parser, CPP_COMMA))
	    {
	      FUNC7 (parser);
	      if (FUNC13 (parser, RID_ATTRIBUTE))
		all_prefix_attrs = FUNC20 (FUNC5 (parser),
					    prefix_attrs);
	      else
		all_prefix_attrs = prefix_attrs;
	      continue;
	    }
	  else if (FUNC12 (parser, CPP_SEMICOLON))
	    {
	      FUNC7 (parser);
	      return;
	    }
	  else
	    {
	      FUNC10 (parser, "expected %<,%> or %<;%>");
	      FUNC19 (parser);
	      return;
	    }
	}
      else if (!fndef_ok)
	{
	  FUNC10 (parser, "expected %<=%>, %<,%>, %<;%>, "
			  "%<asm%> or %<__attribute__%>");
	  FUNC19 (parser);
	  return;
	}
      /* Function definition (nested or otherwise).  */
      if (nested)
	{
	   /* APPLE LOCAL begin radar 5985368 */
	   if (declarator->declarator && declarator->declarator->kind == cdk_block_pointer)
	     FUNC21 ("bad definition of a block");
	  else if (pedantic)
	   /* APPLE LOCAL end radar 5985368 */
	    FUNC29 ("ISO C forbids nested functions");
	  /* APPLE LOCAL begin nested functions 4258406 4357979 (in 4.2 m) */
	  else if (flag_nested_functions == 0)
	    FUNC21 ("nested functions are disabled, use -fnested-functions to re-enable");
	  /* APPLE LOCAL end nested functions 4258406 4357979 (in 4.2 m) */

	  FUNC32 ();
	}
      if (!FUNC36 (specs, declarator, all_prefix_attrs))
	{
	  /* This can appear in many cases looking nothing like a
	     function definition, so we don't give a more specific
	     error suggesting there was one.  */
	  FUNC10 (parser, "expected %<=%>, %<,%>, %<;%>, %<asm%> "
			  "or %<__attribute__%>");
	  if (nested)
	    FUNC31 ();
	  break;
	}
      /* Parse old-style parameter declarations.  ??? Attributes are
	 not allowed to start declaration specifiers here because of a
	 syntax conflict between a function declaration with attribute
	 suffix and a function definition with an attribute prefix on
	 first old-style parameter declaration.  Following the old
	 parser, they are not accepted on subsequent old-style
	 parameter declarations either.  However, there is no
	 ambiguity after the first declaration, nor indeed on the
	 first as long as we don't allow postfix attributes after a
	 declarator with a nonempty identifier list in a definition;
	 and postfix attributes have never been accepted here in
	 function definitions either.  */
      while (FUNC14 (parser, CPP_EOF)
	     && FUNC14 (parser, CPP_OPEN_BRACE))
	/* APPLE LOCAL radar 4708210 (for_objc_collection in 4.2) */
	FUNC39 (parser, false, false, true, false, NULL);
      DECL_SOURCE_LOCATION (current_function_decl)
	= FUNC17 (parser)->location;
      FUNC38 ();
      fnbody = FUNC6 (parser);
      if (nested)
	{
	  tree decl = current_function_decl;
	  FUNC1 (fnbody);
	  FUNC24 ();
	  FUNC31 ();
	  FUNC1 (FUNC3 (DECL_EXPR, decl));
	}
      else
	{
	  FUNC1 (fnbody);
	  FUNC24 ();
	}
      break;
    }
}