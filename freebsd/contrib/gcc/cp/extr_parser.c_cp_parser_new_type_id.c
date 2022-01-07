
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tree ;
struct TYPE_12__ {char* type_definition_forbidden_message; } ;
typedef TYPE_3__ cp_parser ;
struct TYPE_10__ {int bounds; } ;
struct TYPE_11__ {TYPE_1__ array; } ;
struct TYPE_13__ {scalar_t__ kind; struct TYPE_13__* declarator; TYPE_2__ u; } ;
typedef TYPE_4__ cp_declarator ;
typedef int cp_decl_specifier_seq ;


 scalar_t__ ARRAY_TYPE ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int array_type_nelts_top (int ) ;
 scalar_t__ cdk_array ;
 scalar_t__ cdk_pointer ;
 scalar_t__ cdk_ptrmem ;
 TYPE_4__* cp_parser_new_declarator_opt (TYPE_3__*) ;
 int cp_parser_type_specifier_seq (TYPE_3__*,int,int *) ;
 int error_mark_node ;
 int groktypename (int *,TYPE_4__*) ;
 int integer_one_node ;

__attribute__((used)) static tree
cp_parser_new_type_id (cp_parser* parser, tree *nelts)
{
  cp_decl_specifier_seq type_specifier_seq;
  cp_declarator *new_declarator;
  cp_declarator *declarator;
  cp_declarator *outer_declarator;
  const char *saved_message;
  tree type;





  saved_message = parser->type_definition_forbidden_message;
  parser->type_definition_forbidden_message
    = "types may not be defined in a new-type-id";

  cp_parser_type_specifier_seq (parser, 0,
    &type_specifier_seq);

  parser->type_definition_forbidden_message = saved_message;

  new_declarator = cp_parser_new_declarator_opt (parser);



  *nelts = NULL_TREE;

  declarator = new_declarator;
  outer_declarator = ((void*)0);
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
 new_declarator = ((void*)0);
    }

  type = groktypename (&type_specifier_seq, new_declarator);
  if (TREE_CODE (type) == ARRAY_TYPE && *nelts == NULL_TREE)
    {
      *nelts = array_type_nelts_top (type);
      type = TREE_TYPE (type);
    }
  return type;
}
