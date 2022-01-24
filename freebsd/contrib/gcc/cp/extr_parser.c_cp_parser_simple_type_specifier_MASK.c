#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_20__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_23__ {int keyword; } ;
typedef  TYPE_2__ cp_token ;
typedef  int cp_parser_flags ;
struct TYPE_24__ {scalar_t__ scope; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_3__ cp_parser ;
struct TYPE_25__ {int explicit_char_p; int explicit_int_p; int any_specifiers_p; scalar_t__ type; int /*<<< orphan*/ * specs; } ;
typedef  TYPE_4__ cp_decl_specifier_seq ;
struct TYPE_21__ {scalar_t__ value; } ;
struct TYPE_22__ {TYPE_1__ u; } ;

/* Variables and functions */
 int CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES ; 
 int CP_PARSER_FLAGS_OPTIONAL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ NULL_TREE ; 
#define  RID_BOOL 139 
#define  RID_CHAR 138 
#define  RID_DOUBLE 137 
#define  RID_FLOAT 136 
#define  RID_INT 135 
#define  RID_LONG 134 
#define  RID_SHORT 133 
#define  RID_SIGNED 132 
#define  RID_TYPEOF 131 
#define  RID_UNSIGNED 130 
#define  RID_VOID 129 
#define  RID_WCHAR 128 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ boolean_type_node ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ char_type_node ; 
 TYPE_20__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int) ; 
 scalar_t__ FUNC11 (TYPE_3__*,int,int,int,int) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,scalar_t__,int) ; 
 scalar_t__ FUNC17 (TYPE_3__*,int const) ; 
 scalar_t__ FUNC18 (TYPE_3__*,int,int,int) ; 
 scalar_t__ FUNC19 (TYPE_3__*) ; 
 scalar_t__ double_type_node ; 
 scalar_t__ ds_long ; 
 scalar_t__ ds_short ; 
 scalar_t__ ds_signed ; 
 scalar_t__ ds_unsigned ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 scalar_t__ float_type_node ; 
 scalar_t__ integer_type_node ; 
 scalar_t__ long_integer_type_node ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 scalar_t__ short_integer_type_node ; 
 scalar_t__ unsigned_type_node ; 
 scalar_t__ void_type_node ; 
 scalar_t__ wchar_type_node ; 

__attribute__((used)) static tree
FUNC25 (cp_parser* parser,
				 cp_decl_specifier_seq *decl_specs,
				 cp_parser_flags flags)
{
  tree type = NULL_TREE;
  cp_token *token;

  /* Peek at the next token.  */
  token = FUNC7 (parser->lexer);

  /* If we're looking at a keyword, things are easy.  */
  switch (token->keyword)
    {
    case RID_CHAR:
      if (decl_specs)
	decl_specs->explicit_char_p = true;
      type = char_type_node;
      break;
    case RID_WCHAR:
      type = wchar_type_node;
      break;
    case RID_BOOL:
      type = boolean_type_node;
      break;
    case RID_SHORT:
      if (decl_specs)
	++decl_specs->specs[(int) ds_short];
      type = short_integer_type_node;
      break;
    case RID_INT:
      if (decl_specs)
	decl_specs->explicit_int_p = true;
      type = integer_type_node;
      break;
    case RID_LONG:
      if (decl_specs)
	++decl_specs->specs[(int) ds_long];
      type = long_integer_type_node;
      break;
    case RID_SIGNED:
      if (decl_specs)
	++decl_specs->specs[(int) ds_signed];
      type = integer_type_node;
      break;
    case RID_UNSIGNED:
      if (decl_specs)
	++decl_specs->specs[(int) ds_unsigned];
      type = unsigned_type_node;
      break;
    case RID_FLOAT:
      type = float_type_node;
      break;
    case RID_DOUBLE:
      type = double_type_node;
      break;
    case RID_VOID:
      type = void_type_node;
      break;

    case RID_TYPEOF:
      /* Consume the `typeof' token.  */
      FUNC6 (parser->lexer);
      /* Parse the operand to `typeof'.  */
      type = FUNC17 (parser, RID_TYPEOF);
      /* If it is not already a TYPE, take its type.  */
      if (!FUNC4 (type))
	type = FUNC20 (type);

      if (decl_specs)
	FUNC16 (decl_specs, type,
				      /*user_defined_p=*/true);

      return type;

    default:
      break;
    }

  /* If the type-specifier was for a built-in type, we're done.  */
  if (type)
    {
      tree id;

      /* Record the type.  */
      if (decl_specs
	  && (token->keyword != RID_SIGNED
	      && token->keyword != RID_UNSIGNED
	      && token->keyword != RID_SHORT
	      && token->keyword != RID_LONG))
	FUNC16 (decl_specs,
				      type,
				      /*user_defined=*/false);
      if (decl_specs)
	decl_specs->any_specifiers_p = true;

      /* Consume the token.  */
      id = FUNC6 (parser->lexer)->u.value;

      /* There is no valid C++ program where a non-template type is
	 followed by a "<".  That usually indicates that the user thought
	 that the type was a template.  */
      FUNC8 (parser, type);

      return FUNC3 (type);
    }

  /* The type-specifier must be a user-defined type.  */
  if (!(flags & CP_PARSER_FLAGS_NO_USER_DEFINED_TYPES))
    {
      bool qualified_p;
      bool global_p;

      /* Don't gobble tokens or issue error messages if this is an
	 optional type-specifier.  */
      if (flags & CP_PARSER_FLAGS_OPTIONAL)
	FUNC15 (parser);

      /* Look for the optional `::' operator.  */
      global_p
	= (FUNC10 (parser,
				       /*current_scope_valid_p=*/false)
	   != NULL_TREE);
      /* Look for the nested-name specifier.  */
      qualified_p
	= (FUNC11 (parser,
						/*typename_keyword_p=*/false,
						/*check_dependency_p=*/true,
						/*type_p=*/false,
						/*is_declaration=*/false)
	   != NULL_TREE);
      /* If we have seen a nested-name-specifier, and the next token
	 is `template', then we are using the template-id production.  */
      if (parser->scope
	  && FUNC13 (parser))
	{
	  /* Look for the template-id.  */
	  type = FUNC18 (parser,
					/*template_keyword_p=*/true,
					/*check_dependency_p=*/true,
					/*is_declaration=*/false);
	  /* If the template-id did not name a type, we are out of
	     luck.  */
	  if (FUNC1 (type) != TYPE_DECL)
	    {
	      FUNC9 (parser, "expected template-id for type");
	      type = NULL_TREE;
	    }
	}
      /* Otherwise, look for a type-name.  */
      else
	type = FUNC19 (parser);
      /* Keep track of all name-lookups performed in class scopes.  */
      if (type
	  && !global_p
	  && !qualified_p
	  && FUNC1 (type) == TYPE_DECL
	  && FUNC1 (FUNC0 (type)) == IDENTIFIER_NODE)
	FUNC21 (FUNC0 (type), type);
      /* If it didn't work out, we don't have a TYPE.  */
      if ((flags & CP_PARSER_FLAGS_OPTIONAL)
	  && !FUNC14 (parser))
	type = NULL_TREE;
      if (type && decl_specs)
	FUNC16 (decl_specs, type,
				      /*user_defined=*/true);
    }

  /* If we didn't get a type-name, issue an error message.  */
  if (!type && !(flags & CP_PARSER_FLAGS_OPTIONAL))
    {
      FUNC9 (parser, "expected type-name");
      return error_mark_node;
    }

  /* There is no valid C++ program where a non-template type is
     followed by a "<".  That usually indicates that the user thought
     that the type was a template.  */
  if (type && type != error_mark_node)
    {
      /* As a last-ditch effort, see if TYPE is an Objective-C type.
	 If it is, then the '<'...'>' enclose protocol names rather than
	 template arguments, and so everything is fine.  */
      if (FUNC5 ()
	  && (FUNC24 (type) || FUNC23 (type)))
	{
	  tree protos = FUNC12 (parser);
	  tree qual_type = FUNC22 (type, protos);

	  /* Clobber the "unqualified" type previously entered into
	     DECL_SPECS with the new, improved protocol-qualified version.  */
	  if (decl_specs)
	    decl_specs->type = qual_type;

	  return qual_type;
	}

      FUNC8 (parser, FUNC2 (type));
    }

  return type;
}