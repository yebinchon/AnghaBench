#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  cp_parser ;
typedef  int /*<<< orphan*/  cp_declarator ;
struct TYPE_5__ {int /*<<< orphan*/  attributes; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ cp_decl_specifier_seq ;

/* Variables and functions */
 int /*<<< orphan*/  CP_PARSER_DECLARATOR_NAMED ; 
 int /*<<< orphan*/  CP_PARSER_FLAGS_OPTIONAL ; 
 int /*<<< orphan*/  NORMAL ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  RID_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * cp_error_declarator ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dk_no_check ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tf_error ; 

__attribute__((used)) static void
FUNC18 (cp_parser* parser)
{
  int declares_class_or_enum;
  cp_decl_specifier_seq decl_specifiers;
  tree extension_specifier = NULL_TREE;

  /* Look for an (optional) storage-class-specifier or
     function-specifier.  */
  if (FUNC2 (parser))
    {
      extension_specifier
	= FUNC11 (parser);
      if (!extension_specifier)
	extension_specifier
	  = FUNC8 (parser,
					      /*decl_specs=*/NULL);
    }

  /* Look for the `template' keyword.  */
  FUNC9 (parser, RID_TEMPLATE, "`template'");
  /* Let the front end know that we are processing an explicit
     instantiation.  */
  FUNC0 ();
  /* [temp.explicit] says that we are supposed to ignore access
     control while processing explicit instantiation directives.  */
  FUNC17 (dk_no_check);
  /* Parse a decl-specifier-seq.  */
  FUNC5 (parser,
				CP_PARSER_FLAGS_OPTIONAL,
				&decl_specifiers,
				&declares_class_or_enum);
  /* If there was exactly one decl-specifier, and it declared a class,
     and there's no declarator, then we have an explicit type
     instantiation.  */
  if (declares_class_or_enum && FUNC7 (parser))
    {
      tree type;

      type = FUNC1 (&decl_specifiers);
      /* Turn access control back on for names used during
	 template instantiation.  */
      FUNC16 ();
      if (type)
	FUNC13 (type, extension_specifier,
			       /*complain=*/tf_error);
    }
  else
    {
      cp_declarator *declarator;
      tree decl;

      /* Parse the declarator.  */
      declarator
	= FUNC6 (parser, CP_PARSER_DECLARATOR_NAMED,
				/*ctor_dtor_or_conv_p=*/NULL,
				/*parenthesized_p=*/NULL,
				/*member_p=*/false);
      if (declares_class_or_enum & 2)
	FUNC3 (declarator,
						       decl_specifiers.type);
      if (declarator != cp_error_declarator)
	{
	  decl = FUNC15 (declarator, &decl_specifiers,
				 NORMAL, 0, &decl_specifiers.attributes);
	  /* Turn access control back on for names used during
	     template instantiation.  */
	  FUNC16 ();
	  /* Do the explicit instantiation.  */
	  FUNC12 (decl, extension_specifier);
	}
      else
	{
	  FUNC16 ();
	  /* Skip the body of the explicit instantiation.  */
	  FUNC10 (parser);
	}
    }
  /* We're done with the instantiation.  */
  FUNC14 ();

  FUNC4 (parser);
}