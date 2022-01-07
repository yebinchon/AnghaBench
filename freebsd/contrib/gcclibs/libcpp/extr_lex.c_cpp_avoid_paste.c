
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
typedef char cppchar_t ;
struct TYPE_10__ {char* text; } ;
struct TYPE_7__ {TYPE_4__ str; } ;
struct TYPE_8__ {int type; int flags; TYPE_1__ val; } ;
typedef TYPE_2__ cpp_token ;
typedef int cpp_reader ;
struct TYPE_9__ {scalar_t__ category; char* name; } ;



 int CPP_CHAR ;




 scalar_t__ CPP_FIRST_DIGRAPH ;


 scalar_t__ CPP_LAST_EQ ;





 int CPP_OPTION (int *,int ) ;



 int CPP_STRING ;
 int DIGRAPH ;
 char EOF ;
 int NAMED_OP ;
 scalar_t__ SPELL_OPERATOR ;
 char** digraph_spellings ;
 int name_p (int *,TYPE_4__*) ;
 int objc ;
 TYPE_3__* token_spellings ;

int
cpp_avoid_paste (cpp_reader *pfile, const cpp_token *token1,
   const cpp_token *token2)
{
  enum cpp_ttype a = token1->type, b = token2->type;
  cppchar_t c;

  if (token1->flags & NAMED_OP)
    a = 132;
  if (token2->flags & NAMED_OP)
    b = 132;

  c = EOF;
  if (token2->flags & DIGRAPH)
    c = digraph_spellings[(int) b - (int) CPP_FIRST_DIGRAPH][0];
  else if (token_spellings[b].category == SPELL_OPERATOR)
    c = token_spellings[b].name[0];


  if ((int) a <= (int) CPP_LAST_EQ && c == '=')
    return 1;

  switch (a)
    {
    case 137: return c == '>';
    case 135: return c == '<' || c == '%' || c == ':';
    case 128: return c == '+';
    case 134: return c == '-' || c == '>';
    case 139: return c == '/' || c == '*';
    case 133: return c == ':' || c == '>';
    case 142: return c == '&';
    case 130: return c == '|';
    case 141: return c == ':' || c == '>';
    case 140: return c == '*';
    case 138: return c == '.' || c == '%' || b == 131;
    case 136: return c == '#' || c == '%';
    case 132: return ((b == 131
     && name_p (pfile, &token2->val.str))
    || b == 132
    || b == CPP_CHAR || b == CPP_STRING);
    case 131: return (b == 131 || b == 132
    || c == '.' || c == '+' || c == '-');

    case 129: return ((token1->val.str.text[0] == '\\'
     && b == 132)
    || (CPP_OPTION (pfile, objc)
        && token1->val.str.text[0] == '@'
        && (b == 132 || b == CPP_STRING)));
    default: break;
    }

  return 0;
}
