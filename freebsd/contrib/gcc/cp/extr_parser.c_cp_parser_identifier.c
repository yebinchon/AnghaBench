
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int value; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ cp_token ;
typedef int cp_parser ;


 int CPP_NAME ;
 TYPE_2__* cp_parser_require (int *,int ,char*) ;
 int error_mark_node ;

__attribute__((used)) static tree
cp_parser_identifier (cp_parser* parser)
{
  cp_token *token;


  token = cp_parser_require (parser, CPP_NAME, "identifier");

  return token ? token->u.value : error_mark_node;
}
