#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  cp_parser_flags ;
struct TYPE_11__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;
struct TYPE_12__ {int /*<<< orphan*/  type; int /*<<< orphan*/  attributes; } ;
typedef  TYPE_2__ cp_decl_specifier_seq ;

/* Variables and functions */
 int /*<<< orphan*/  CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES ; 
 int /*<<< orphan*/  CP_PARSER_FLAGS_OPTIONAL ; 
 int /*<<< orphan*/  RID_ATTRIBUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  error_mark_node ; 

__attribute__((used)) static void
FUNC7 (cp_parser* parser,
			      bool is_condition,
			      cp_decl_specifier_seq *type_specifier_seq)
{
  bool seen_type_specifier = false;
  cp_parser_flags flags = CP_PARSER_FLAGS_OPTIONAL;

  /* Clear the TYPE_SPECIFIER_SEQ.  */
  FUNC1 (type_specifier_seq);

  /* Parse the type-specifiers and attributes.  */
  while (true)
    {
      tree type_specifier;
      bool is_cv_qualifier;

      /* Check for attributes first.  */
      if (FUNC2 (parser->lexer, RID_ATTRIBUTE))
	{
	  type_specifier_seq->attributes =
	    FUNC0 (type_specifier_seq->attributes,
		     FUNC3 (parser));
	  continue;
	}

      /* Look for the type-specifier.  */
      type_specifier = FUNC6 (parser,
						 flags,
						 type_specifier_seq,
						 /*is_declaration=*/false,
						 NULL,
						 &is_cv_qualifier);
      if (!type_specifier)
	{
	  /* If the first type-specifier could not be found, this is not a
	     type-specifier-seq at all.  */
	  if (!seen_type_specifier)
	    {
	      FUNC5 (parser, "expected type-specifier");
	      type_specifier_seq->type = error_mark_node;
	      return;
	    }
	  /* If subsequent type-specifiers could not be found, the
	     type-specifier-seq is complete.  */
	  break;
	}

      seen_type_specifier = true;
      /* The standard says that a condition can be:

	    type-specifier-seq declarator = assignment-expression

	 However, given:

	   struct S {};
	   if (int S = ...)

	 we should treat the "S" as a declarator, not as a
	 type-specifier.  The standard doesn't say that explicitly for
	 type-specifier-seq, but it does say that for
	 decl-specifier-seq in an ordinary declaration.  Perhaps it
	 would be clearer just to allow a decl-specifier-seq here, and
	 then add a semantic restriction that if any decl-specifiers
	 that are not type-specifiers appear, the program is invalid.  */
      if (is_condition && !is_cv_qualifier)
	flags |= CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES;
    }

  FUNC4 (type_specifier_seq);
}