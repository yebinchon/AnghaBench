#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_12__ {char* type_definition_forbidden_message; } ;
typedef  TYPE_3__ cp_parser ;
struct TYPE_10__ {int /*<<< orphan*/  bounds; } ;
struct TYPE_11__ {TYPE_1__ array; } ;
struct TYPE_13__ {scalar_t__ kind; struct TYPE_13__* declarator; TYPE_2__ u; } ;
typedef  TYPE_4__ cp_declarator ;
typedef  int /*<<< orphan*/  cp_decl_specifier_seq ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ cdk_array ; 
 scalar_t__ cdk_pointer ; 
 scalar_t__ cdk_ptrmem ; 
 TYPE_4__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  integer_one_node ; 

__attribute__((used)) static tree
FUNC6 (cp_parser* parser, tree *nelts)
{
  cp_decl_specifier_seq type_specifier_seq;
  cp_declarator *new_declarator;
  cp_declarator *declarator;
  cp_declarator *outer_declarator;
  const char *saved_message;
  tree type;

  /* The type-specifier sequence must not contain type definitions.
     (It cannot contain declarations of new types either, but if they
     are not definitions we will catch that because they are not
     complete.)  */
  saved_message = parser->type_definition_forbidden_message;
  parser->type_definition_forbidden_message
    = "types may not be defined in a new-type-id";
  /* Parse the type-specifier-seq.  */
  FUNC4 (parser, /*is_condition=*/false,
				&type_specifier_seq);
  /* Restore the old message.  */
  parser->type_definition_forbidden_message = saved_message;
  /* Parse the new-declarator.  */
  new_declarator = FUNC3 (parser);

  /* Determine the number of elements in the last array dimension, if
     any.  */
  *nelts = NULL_TREE;
  /* Skip down to the last array dimension.  */
  declarator = new_declarator;
  outer_declarator = NULL;
  while (declarator && (declarator->kind == cdk_pointer
			|| declarator->kind == cdk_ptrmem))
    {
      outer_declarator = declarator;
      declarator = declarator->declarator;
    }
  while (declarator
	 && declarator->kind == cdk_array
	 && declarator->declarator
	 && declarator->declarator->kind == cdk_array)
    {
      outer_declarator = declarator;
      declarator = declarator->declarator;
    }

  if (declarator && declarator->kind == cdk_array)
    {
      *nelts = declarator->u.array.bounds;
      if (*nelts == error_mark_node)
	*nelts = integer_one_node;

      if (outer_declarator)
	outer_declarator->declarator = declarator->declarator;
      else
	new_declarator = NULL;
    }

  type = FUNC5 (&type_specifier_seq, new_declarator);
  if (FUNC0 (type) == ARRAY_TYPE && *nelts == NULL_TREE)
    {
      *nelts = FUNC2 (type);
      type = FUNC1 (type);
    }
  return type;
}