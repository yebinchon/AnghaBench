
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* text; int len; } ;
struct TYPE_8__ {TYPE_1__ str; int node; } ;
struct TYPE_9__ {int flags; TYPE_2__ val; scalar_t__ type; } ;
typedef TYPE_3__ cpp_token ;
typedef int FILE ;


 scalar_t__ CPP_FIRST_DIGRAPH ;
 int DIGRAPH ;
 int NAMED_OP ;
 size_t NODE_LEN (int ) ;
 unsigned char* NODE_NAME (int ) ;




 unsigned char* TOKEN_NAME (TYPE_3__ const*) ;
 int TOKEN_SPELL (TYPE_3__ const*) ;
 unsigned char** digraph_spellings ;
 int fputc (unsigned char,int *) ;
 int fwrite (unsigned char*,int,int,int *) ;
 int putc (int,int *) ;
 int utf8_to_ucn (unsigned char*,unsigned char const*) ;

void
cpp_output_token (const cpp_token *token, FILE *fp)
{
  switch (TOKEN_SPELL (token))
    {
    case 128:
      {
 const unsigned char *spelling;
 int c;

 if (token->flags & DIGRAPH)
   spelling
     = digraph_spellings[(int) token->type - (int) CPP_FIRST_DIGRAPH];
 else if (token->flags & NAMED_OP)
   goto spell_ident;
 else
   spelling = TOKEN_NAME (token);

 c = *spelling;
 do
   putc (c, fp);
 while ((c = *++spelling) != '\0');
      }
      break;

    spell_ident:
    case 131:
      {
 size_t i;
 const unsigned char * name = NODE_NAME (token->val.node);

 for (i = 0; i < NODE_LEN (token->val.node); i++)
   if (name[i] & ~0x7F)
     {
       unsigned char buffer[10];
       i += utf8_to_ucn (buffer, name + i) - 1;
       fwrite (buffer, 1, 10, fp);
     }
   else
     fputc (NODE_NAME (token->val.node)[i], fp);
      }
      break;

    case 130:
      fwrite (token->val.str.text, 1, token->val.str.len, fp);
      break;

    case 129:

      break;
    }
}
