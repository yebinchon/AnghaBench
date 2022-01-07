
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct type {int is_enum; int is_bits; int enums; void* syntax; } ;
struct enums {long value; void* name; } ;
typedef enum tok { ____Placeholder_tok } tok ;


 int TAILQ_INSERT_TAIL (int *,struct enums*,int ) ;
 int TOK_BITS ;
 int TOK_DEFTYPE ;
 int TOK_ENUM ;
 int TOK_EOF ;
 int TOK_NUM ;
 char TOK_STR ;
 char gettoken () ;
 int link ;
 struct type* make_type (char const*) ;
 int report (char*) ;
 void* savetok () ;
 void* val ;
 struct enums* xalloc (int) ;

__attribute__((used)) static u_int
parse_type(enum tok *tok, struct type *t, const char *vname, char **subtype)
{
 u_int syntax;
 struct enums *e;

 syntax = val;
 if (subtype != ((void*)0))
  *subtype = ((void*)0);

 if (*tok == TOK_ENUM || *tok == TOK_BITS) {
  if (t == ((void*)0) && vname != ((void*)0)) {
   t = make_type(vname);
   t->is_enum = (*tok == TOK_ENUM);
   t->is_bits = (*tok == TOK_BITS);
   t->syntax = syntax;
  }
  if (gettoken() != '(')
   report("'(' expected after ENUM");

  if ((*tok = gettoken()) == TOK_EOF)
   report("unexpected EOF in ENUM");
  do {
   e = ((void*)0);
   if (t != ((void*)0)) {
    e = xalloc(sizeof(*e));
   }
   if (*tok == '-') {
    if ((*tok = gettoken()) == TOK_EOF)
     report("unexpected EOF in ENUM");
    e->value = -(long)val;
   } else
    e->value = val;

   if (*tok != TOK_NUM)
    report("need value for ENUM/BITS");
   if (gettoken() != TOK_STR)
    report("need string in ENUM/BITS");
   e->name = savetok();
   TAILQ_INSERT_TAIL(&t->enums, e, link);
   if ((*tok = gettoken()) == TOK_EOF)
    report("unexpected EOF in ENUM/BITS");
  } while (*tok != ')');
  *tok = gettoken();

 } else if (*tok == TOK_DEFTYPE) {
  *tok = gettoken();

 } else {
  if ((*tok = gettoken()) == '|') {
   if (gettoken() != TOK_STR)
    report("subtype expected after '|'");
   if (subtype != ((void*)0))
    *subtype = savetok();
   *tok = gettoken();
  }
 }

 return (syntax);
}
