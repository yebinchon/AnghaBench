#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct symbol {int dummy; } ;
struct TYPE_14__ {int is_a_field_of_this; struct symbol* sym; } ;
struct TYPE_13__ {int /*<<< orphan*/  type; } ;
struct TYPE_16__ {char* ptr; int length; } ;
struct TYPE_15__ {TYPE_2__ ssym; TYPE_1__ tsym; TYPE_5__ sval; int /*<<< orphan*/  opcode; int /*<<< orphan*/  lval; } ;
typedef  TYPE_3__ YYSTYPE ;
struct TYPE_19__ {scalar_t__ la_language; } ;
struct TYPE_18__ {int token; int /*<<< orphan*/  opcode; int /*<<< orphan*/ * operator; } ;
struct TYPE_17__ {int token; int /*<<< orphan*/  opcode; int /*<<< orphan*/ * operator; } ;
struct TYPE_12__ {int /*<<< orphan*/  value; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int BOOLEAN_LITERAL ; 
 int ERROR ; 
 int INT ; 
 scalar_t__ LOC_TYPEDEF ; 
 int NAME ; 
 int NAME_OR_INT ; 
 scalar_t__ FUNC0 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 
 int TYPENAME ; 
 int VARIABLE ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_11__* boolean_values ; 
 int /*<<< orphan*/  comma_terminates ; 
 char* FUNC3 (TYPE_5__) ; 
 TYPE_9__* current_language ; 
 TYPE_8__* dot_ops ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  expression_context_block ; 
 TYPE_7__* f77_keywords ; 
 int input_radix ; 
 scalar_t__ language_cplus ; 
 char* lexptr ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct symbol* FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  paren_depth ; 
 int FUNC9 (char*,int,int,TYPE_3__*) ; 
 char* prev_lexptr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__) ; 
 TYPE_3__ yylval ; 

__attribute__((used)) static int
FUNC13 ()
{
  int c;
  int namelen;
  unsigned int i,token;
  char *tokstart;
  
 retry:
 
  prev_lexptr = lexptr;
 
  tokstart = lexptr;
  
  /* First of all, let us make sure we are not dealing with the 
     special tokens .true. and .false. which evaluate to 1 and 0.  */
  
  if (*lexptr == '.')
    { 
      for (i = 0; boolean_values[i].name != NULL; i++)
	{
	  if (FUNC11 (tokstart, boolean_values[i].name,
		       FUNC10 (boolean_values[i].name)) == 0)
	    {
	      lexptr += FUNC10 (boolean_values[i].name); 
	      yylval.lval = boolean_values[i].value; 
	      return BOOLEAN_LITERAL;
	    }
	}
    }
  
  /* See if it is a special .foo. operator */
  
  for (i = 0; dot_ops[i].operator != NULL; i++)
    if (FUNC11 (tokstart, dot_ops[i].operator, FUNC10 (dot_ops[i].operator)) == 0)
      {
	lexptr += FUNC10 (dot_ops[i].operator);
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
      token = FUNC7 ();
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
      /* Might be a floating point number.  */
      if (lexptr[1] < '0' || lexptr[1] > '9')
	goto symbol;		/* Nope, must be a symbol. */
      /* FALL THRU into number case.  */
      
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
        /* It's a number.  */
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
	      /* This is the sign of the exponent, not the end of the
		 number.  */
	      continue;
	    /* We will take any letters or digits.  parse_number will
	       complain if past the radix, or if L or U are not final.  */
	    else if ((*p < '0' || *p > '9')
		     && ((*p < 'a' || *p > 'z')
			 && (*p < 'A' || *p > 'Z')))
	      break;
	  }
	toktype = FUNC9 (tokstart, p - tokstart, got_dot|got_e|got_d,
				&yylval);
        if (toktype == ERROR)
          {
	    char *err_copy = (char *) FUNC2 (p - tokstart + 1);
	    
	    FUNC8 (err_copy, tokstart, p - tokstart);
	    err_copy[p - tokstart] = 0;
	    FUNC4 ("Invalid number \"%s\".", err_copy);
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
    /* We must have come across a bad character (e.g. ';').  */
    FUNC4 ("Invalid character '%c' in expression.", c);
  
  namelen = 0;
  for (c = tokstart[namelen];
       (c == '_' || c == '$' || (c >= '0' && c <= '9') 
	|| (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')); 
       c = tokstart[++namelen]);
  
  /* The token "if" terminates the expression and is NOT 
     removed from the input stream.  */
  
  if (namelen == 2 && tokstart[0] == 'i' && tokstart[1] == 'f')
    return 0;
  
  lexptr += namelen;
  
  /* Catch specific keywords.  */
  
  for (i = 0; f77_keywords[i].operator != NULL; i++)
    if (FUNC11 (tokstart, f77_keywords[i].operator,
		 FUNC10(f77_keywords[i].operator)) == 0)
      {
	/* 	lexptr += strlen(f77_keywords[i].operator); */ 
	yylval.opcode = f77_keywords[i].opcode;
	return f77_keywords[i].token;
      }
  
  yylval.sval.ptr = tokstart;
  yylval.sval.length = namelen;
  
  if (*tokstart == '$')
    {
      FUNC12 (yylval.sval);
      return VARIABLE;
    }
  
  /* Use token-type TYPENAME for symbols that happen to be defined
     currently as names of types; NAME for other symbols.
     The caller is not constrained to care about the distinction.  */
  {
    char *tmp = FUNC3 (yylval.sval);
    struct symbol *sym;
    int is_a_field_of_this = 0;
    int hextype;
    
    sym = FUNC6 (tmp, expression_context_block,
			 VAR_DOMAIN,
			 current_language->la_language == language_cplus
			 ? &is_a_field_of_this : NULL,
			 NULL);
    if (sym && FUNC0 (sym) == LOC_TYPEDEF)
      {
	yylval.tsym.type = FUNC1 (sym);
	return TYPENAME;
      }
    if ((yylval.tsym.type = FUNC5 (tmp)) != 0)
      return TYPENAME;
    
    /* Input names that aren't symbols but ARE valid hex numbers,
       when the input radix permits them, can be names or numbers
       depending on the parse.  Note we support radixes > 16 here.  */
    if (!sym
	&& ((tokstart[0] >= 'a' && tokstart[0] < 'a' + input_radix - 10)
	    || (tokstart[0] >= 'A' && tokstart[0] < 'A' + input_radix - 10)))
      {
 	YYSTYPE newlval;	/* Its value is ignored.  */
	hextype = FUNC9 (tokstart, namelen, 0, &newlval);
	if (hextype == INT)
	  {
	    yylval.ssym.sym = sym;
	    yylval.ssym.is_a_field_of_this = is_a_field_of_this;
	    return NAME_OR_INT;
	  }
      }
    
    /* Any other kind of symbol */
    yylval.ssym.sym = sym;
    yylval.ssym.is_a_field_of_this = is_a_field_of_this;
    return NAME;
  }
}