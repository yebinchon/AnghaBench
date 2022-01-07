
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct symbol {int dummy; } ;
struct TYPE_14__ {int is_a_field_of_this; struct symbol* sym; } ;
struct TYPE_13__ {int type; } ;
struct TYPE_16__ {char* ptr; int length; } ;
struct TYPE_15__ {TYPE_2__ ssym; TYPE_1__ tsym; TYPE_5__ sval; int opcode; int lval; } ;
typedef TYPE_3__ YYSTYPE ;
struct TYPE_19__ {scalar_t__ la_language; } ;
struct TYPE_18__ {int token; int opcode; int * operator; } ;
struct TYPE_17__ {int token; int opcode; int * operator; } ;
struct TYPE_12__ {int value; int * name; } ;


 int BOOLEAN_LITERAL ;
 int ERROR ;
 int INT ;
 scalar_t__ LOC_TYPEDEF ;
 int NAME ;
 int NAME_OR_INT ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 int SYMBOL_TYPE (struct symbol*) ;
 int TYPENAME ;
 int VARIABLE ;
 int VAR_DOMAIN ;
 scalar_t__ alloca (int) ;
 TYPE_11__* boolean_values ;
 int comma_terminates ;
 char* copy_name (TYPE_5__) ;
 TYPE_9__* current_language ;
 TYPE_8__* dot_ops ;
 int error (char*,...) ;
 int expression_context_block ;
 TYPE_7__* f77_keywords ;
 int input_radix ;
 scalar_t__ language_cplus ;
 char* lexptr ;
 int lookup_primitive_typename (char*) ;
 struct symbol* lookup_symbol (char*,int ,int ,int*,int *) ;
 unsigned int match_string_literal () ;
 int memcpy (char*,char*,int) ;
 int paren_depth ;
 int parse_number (char*,int,int,TYPE_3__*) ;
 char* prev_lexptr ;
 int strlen (int *) ;
 scalar_t__ strncmp (char*,int *,int ) ;
 int write_dollar_variable (TYPE_5__) ;
 TYPE_3__ yylval ;

__attribute__((used)) static int
yylex ()
{
  int c;
  int namelen;
  unsigned int i,token;
  char *tokstart;

 retry:

  prev_lexptr = lexptr;

  tokstart = lexptr;




  if (*lexptr == '.')
    {
      for (i = 0; boolean_values[i].name != ((void*)0); i++)
 {
   if (strncmp (tokstart, boolean_values[i].name,
         strlen (boolean_values[i].name)) == 0)
     {
       lexptr += strlen (boolean_values[i].name);
       yylval.lval = boolean_values[i].value;
       return BOOLEAN_LITERAL;
     }
 }
    }



  for (i = 0; dot_ops[i].operator != ((void*)0); i++)
    if (strncmp (tokstart, dot_ops[i].operator, strlen (dot_ops[i].operator)) == 0)
      {
 lexptr += strlen (dot_ops[i].operator);
 yylval.opcode = dot_ops[i].opcode;
 return dot_ops[i].token;
      }

  switch (c = *tokstart)
    {
    case 0:
      return 0;

    case ' ':
    case '\t':
    case '\n':
      lexptr++;
      goto retry;

    case '\'':
      token = match_string_literal ();
      if (token != 0)
 return (token);
      break;

    case '(':
      paren_depth++;
      lexptr++;
      return c;

    case ')':
      if (paren_depth == 0)
 return 0;
      paren_depth--;
      lexptr++;
      return c;

    case ',':
      if (comma_terminates && paren_depth == 0)
 return 0;
      lexptr++;
      return c;

    case '.':

      if (lexptr[1] < '0' || lexptr[1] > '9')
 goto symbol;


    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      {

 int got_dot = 0, got_e = 0, got_d = 0, toktype;
 char *p = tokstart;
 int hex = input_radix > 10;

 if (c == '0' && (p[1] == 'x' || p[1] == 'X'))
   {
     p += 2;
     hex = 1;
   }
 else if (c == '0' && (p[1]=='t' || p[1]=='T' || p[1]=='d' || p[1]=='D'))
   {
     p += 2;
     hex = 0;
   }

 for (;; ++p)
   {
     if (!hex && !got_e && (*p == 'e' || *p == 'E'))
       got_dot = got_e = 1;
     else if (!hex && !got_d && (*p == 'd' || *p == 'D'))
       got_dot = got_d = 1;
     else if (!hex && !got_dot && *p == '.')
       got_dot = 1;
     else if (((got_e && (p[-1] == 'e' || p[-1] == 'E'))
       || (got_d && (p[-1] == 'd' || p[-1] == 'D')))
       && (*p == '-' || *p == '+'))


       continue;


     else if ((*p < '0' || *p > '9')
       && ((*p < 'a' || *p > 'z')
    && (*p < 'A' || *p > 'Z')))
       break;
   }
 toktype = parse_number (tokstart, p - tokstart, got_dot|got_e|got_d,
    &yylval);
        if (toktype == ERROR)
          {
     char *err_copy = (char *) alloca (p - tokstart + 1);

     memcpy (err_copy, tokstart, p - tokstart);
     err_copy[p - tokstart] = 0;
     error ("Invalid number \"%s\".", err_copy);
   }
 lexptr = p;
 return toktype;
      }

    case '+':
    case '-':
    case '*':
    case '/':
    case '%':
    case '|':
    case '&':
    case '^':
    case '~':
    case '!':
    case '@':
    case '<':
    case '>':
    case '[':
    case ']':
    case '?':
    case ':':
    case '=':
    case '{':
    case '}':
    symbol:
      lexptr++;
      return c;
    }

  if (!(c == '_' || c == '$'
 || (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')))

    error ("Invalid character '%c' in expression.", c);

  namelen = 0;
  for (c = tokstart[namelen];
       (c == '_' || c == '$' || (c >= '0' && c <= '9')
 || (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'));
       c = tokstart[++namelen]);




  if (namelen == 2 && tokstart[0] == 'i' && tokstart[1] == 'f')
    return 0;

  lexptr += namelen;



  for (i = 0; f77_keywords[i].operator != ((void*)0); i++)
    if (strncmp (tokstart, f77_keywords[i].operator,
   strlen(f77_keywords[i].operator)) == 0)
      {

 yylval.opcode = f77_keywords[i].opcode;
 return f77_keywords[i].token;
      }

  yylval.sval.ptr = tokstart;
  yylval.sval.length = namelen;

  if (*tokstart == '$')
    {
      write_dollar_variable (yylval.sval);
      return VARIABLE;
    }




  {
    char *tmp = copy_name (yylval.sval);
    struct symbol *sym;
    int is_a_field_of_this = 0;
    int hextype;

    sym = lookup_symbol (tmp, expression_context_block,
    VAR_DOMAIN,
    current_language->la_language == language_cplus
    ? &is_a_field_of_this : ((void*)0),
    ((void*)0));
    if (sym && SYMBOL_CLASS (sym) == LOC_TYPEDEF)
      {
 yylval.tsym.type = SYMBOL_TYPE (sym);
 return TYPENAME;
      }
    if ((yylval.tsym.type = lookup_primitive_typename (tmp)) != 0)
      return TYPENAME;




    if (!sym
 && ((tokstart[0] >= 'a' && tokstart[0] < 'a' + input_radix - 10)
     || (tokstart[0] >= 'A' && tokstart[0] < 'A' + input_radix - 10)))
      {
  YYSTYPE newlval;
 hextype = parse_number (tokstart, namelen, 0, &newlval);
 if (hextype == INT)
   {
     yylval.ssym.sym = sym;
     yylval.ssym.is_a_field_of_this = is_a_field_of_this;
     return NAME_OR_INT;
   }
      }


    yylval.ssym.sym = sym;
    yylval.ssym.is_a_field_of_this = is_a_field_of_this;
    return NAME;
  }
}
