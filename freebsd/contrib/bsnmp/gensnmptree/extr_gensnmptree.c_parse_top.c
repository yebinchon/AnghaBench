
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int is_enum; int is_bits; int syntax; } ;
struct node {int dummy; } ;
typedef enum tok { ____Placeholder_tok } tok ;


 int TOK_BITS ;
 int TOK_ENUM ;
 scalar_t__ TOK_FILENAME ;
 int TOK_INCLUDE ;
 scalar_t__ TOK_STR ;
 int TOK_TYPEDEF ;
 scalar_t__ gettoken () ;
 int input_fopen (int ,int ) ;
 struct type* make_type (int ) ;
 struct node* parse (int) ;
 int parse_type (int*,struct type*,int *,int *) ;
 int pushback (int) ;
 int report (char*) ;
 int str ;
 int val ;

__attribute__((used)) static struct node *
parse_top(enum tok tok)
{
 struct type *t;

 if (tok == '(')
  return (parse(tok));

 if (tok == TOK_TYPEDEF) {
  if (gettoken() != TOK_STR)
   report("type name expected after typedef");

  t = make_type(str);

  tok = gettoken();
  t->is_enum = (tok == TOK_ENUM);
  t->is_bits = (tok == TOK_BITS);

  t->syntax = parse_type(&tok, t, ((void*)0), ((void*)0));
  pushback(tok);

  return (((void*)0));
 }

 if (tok == TOK_INCLUDE) {
  if (gettoken() != TOK_FILENAME)
   report("filename expected in include directive");

  input_fopen(str, val);
  return (((void*)0));
 }

 report("'(' or 'typedef' expected");
}
