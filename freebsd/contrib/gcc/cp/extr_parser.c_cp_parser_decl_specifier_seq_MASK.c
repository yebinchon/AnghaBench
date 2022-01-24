#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_18__ {int keyword; } ;
typedef  TYPE_1__ cp_token ;
typedef  int /*<<< orphan*/  cp_parser_flags ;
struct TYPE_19__ {int /*<<< orphan*/  lexer; int /*<<< orphan*/  in_declarator_p; } ;
typedef  TYPE_2__ cp_parser ;
struct TYPE_20__ {scalar_t__* specs; int conflicting_specifiers_p; int any_specifiers_p; int /*<<< orphan*/  storage_class; int /*<<< orphan*/  attributes; } ;
typedef  TYPE_3__ cp_decl_specifier_seq ;

/* Variables and functions */
 int /*<<< orphan*/  CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES ; 
 int /*<<< orphan*/  CP_PARSER_FLAGS_OPTIONAL ; 
 int RID_ATTRIBUTE ; 
#define  RID_AUTO 138 
#define  RID_EXPLICIT 137 
#define  RID_EXTERN 136 
#define  RID_FRIEND 135 
#define  RID_INLINE 134 
#define  RID_MUTABLE 133 
#define  RID_REGISTER 132 
#define  RID_STATIC 131 
#define  RID_THREAD 130 
#define  RID_TYPEDEF 129 
#define  RID_VIRTUAL 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_3__*,int) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int,int*,int*) ; 
 scalar_t__ ds_friend ; 
 scalar_t__ ds_thread ; 
 scalar_t__ ds_typedef ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  sc_none ; 

__attribute__((used)) static void
FUNC14 (cp_parser* parser,
			      cp_parser_flags flags,
			      cp_decl_specifier_seq *decl_specs,
			      int* declares_class_or_enum)
{
  bool constructor_possible_p = !parser->in_declarator_p;

  /* Clear DECL_SPECS.  */
  FUNC2 (decl_specs);

  /* Assume no class or enumeration type is declared.  */
  *declares_class_or_enum = 0;

  /* Keep reading specifiers until there are no more to read.  */
  while (true)
    {
      bool constructor_p;
      bool found_decl_spec;
      cp_token *token;

      /* Peek at the next token.  */
      token = FUNC4 (parser->lexer);
      /* Handle attributes.  */
      if (token->keyword == RID_ATTRIBUTE)
	{
	  /* Parse the attributes.  */
	  decl_specs->attributes
	    = FUNC1 (decl_specs->attributes,
		       FUNC6 (parser));
	  continue;
	}
      /* Assume we will find a decl-specifier keyword.  */
      found_decl_spec = true;
      /* If the next token is an appropriate keyword, we can simply
	 add it to the list.  */
      switch (token->keyword)
	{
	  /* decl-specifier:
	       friend  */
	case RID_FRIEND:
	  if (!FUNC0 ())
	    {
	      FUNC13 ("%<friend%> used outside of class");
	      FUNC5 (parser->lexer);
	    }
	  else
	    {
	      ++decl_specs->specs[(int) ds_friend];
	      /* Consume the token.  */
	      FUNC3 (parser->lexer);
	    }
	  break;

	  /* function-specifier:
	       inline
	       virtual
	       explicit  */
	case RID_INLINE:
	case RID_VIRTUAL:
	case RID_EXPLICIT:
	  FUNC10 (parser, decl_specs);
	  break;

	  /* decl-specifier:
	       typedef  */
	case RID_TYPEDEF:
	  ++decl_specs->specs[(int) ds_typedef];
	  /* Consume the token.  */
	  FUNC3 (parser->lexer);
	  /* A constructor declarator cannot appear in a typedef.  */
	  constructor_possible_p = false;
	  /* The "typedef" keyword can only occur in a declaration; we
	     may as well commit at this point.  */
	  FUNC8 (parser);

          if (decl_specs->storage_class != sc_none)
            decl_specs->conflicting_specifiers_p = true;
	  break;

	  /* storage-class-specifier:
	       auto
	       register
	       static
	       extern
	       mutable

	     GNU Extension:
	       thread  */
	case RID_AUTO:
	case RID_REGISTER:
	case RID_STATIC:
	case RID_EXTERN:
	case RID_MUTABLE:
	  /* Consume the token.  */
	  FUNC3 (parser->lexer);
	  FUNC11 (parser, decl_specs, token->keyword);
	  break;
	case RID_THREAD:
	  /* Consume the token.  */
	  FUNC3 (parser->lexer);
	  ++decl_specs->specs[(int) ds_thread];
	  break;

	default:
	  /* We did not yet find a decl-specifier yet.  */
	  found_decl_spec = false;
	  break;
	}

      /* Constructors are a special case.  The `S' in `S()' is not a
	 decl-specifier; it is the beginning of the declarator.  */
      constructor_p
	= (!found_decl_spec
	   && constructor_possible_p
	   && (FUNC9
	       (parser, decl_specs->specs[(int) ds_friend] != 0)));

      /* If we don't have a DECL_SPEC yet, then we must be looking at
	 a type-specifier.  */
      if (!found_decl_spec && !constructor_p)
	{
	  int decl_spec_declares_class_or_enum;
	  bool is_cv_qualifier;
	  tree type_spec;

	  type_spec
	    = FUNC12 (parser, flags,
					decl_specs,
					/*is_declaration=*/true,
					&decl_spec_declares_class_or_enum,
					&is_cv_qualifier);

	  *declares_class_or_enum |= decl_spec_declares_class_or_enum;

	  /* If this type-specifier referenced a user-defined type
	     (a typedef, class-name, etc.), then we can't allow any
	     more such type-specifiers henceforth.

	     [dcl.spec]

	     The longest sequence of decl-specifiers that could
	     possibly be a type name is taken as the
	     decl-specifier-seq of a declaration.  The sequence shall
	     be self-consistent as described below.

	     [dcl.type]

	     As a general rule, at most one type-specifier is allowed
	     in the complete decl-specifier-seq of a declaration.  The
	     only exceptions are the following:

	     -- const or volatile can be combined with any other
		type-specifier.

	     -- signed or unsigned can be combined with char, long,
		short, or int.

	     -- ..

	     Example:

	       typedef char* Pc;
	       void g (const int Pc);

	     Here, Pc is *not* part of the decl-specifier seq; it's
	     the declarator.  Therefore, once we see a type-specifier
	     (other than a cv-qualifier), we forbid any additional
	     user-defined types.  We *do* still allow things like `int
	     int' to be considered a decl-specifier-seq, and issue the
	     error message later.  */
	  if (type_spec && !is_cv_qualifier)
	    flags |= CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES;
	  /* A constructor declarator cannot follow a type-specifier.  */
	  if (type_spec)
	    {
	      constructor_possible_p = false;
	      found_decl_spec = true;
	    }
	}

      /* If we still do not have a DECL_SPEC, then there are no more
	 decl-specifiers.  */
      if (!found_decl_spec)
	break;

      decl_specs->any_specifiers_p = true;
      /* After we see one decl-specifier, further decl-specifiers are
	 always optional.  */
      flags |= CP_PARSER_FLAGS_OPTIONAL;
    }

  FUNC7 (decl_specs);

  /* Don't allow a friend specifier with a class definition.  */
  if (decl_specs->specs[(int) ds_friend] != 0
      && (*declares_class_or_enum & 2))
    FUNC13 ("class definition may not be declared a friend");
}