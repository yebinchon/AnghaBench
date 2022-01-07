
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* text; size_t len; } ;
struct TYPE_8__ {TYPE_1__ str; int node; } ;
struct TYPE_9__ {int flags; TYPE_2__ val; scalar_t__ type; } ;
typedef TYPE_3__ cpp_token ;
typedef int cpp_reader ;


 int CPP_DL_ICE ;
 scalar_t__ CPP_FIRST_DIGRAPH ;
 int DIGRAPH ;
 int NAMED_OP ;
 size_t NODE_LEN (int ) ;
 unsigned char* NODE_NAME (int ) ;




 unsigned char* TOKEN_NAME (TYPE_3__ const*) ;
 int TOKEN_SPELL (TYPE_3__ const*) ;
 int cpp_error (int *,int ,char*,unsigned char*) ;
 unsigned char** digraph_spellings ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int utf8_to_ucn (unsigned char*,unsigned char const*) ;

unsigned char *
cpp_spell_token (cpp_reader *pfile, const cpp_token *token,
   unsigned char *buffer, bool forstring)
{
  switch (TOKEN_SPELL (token))
    {
    case 128:
      {
 const unsigned char *spelling;
 unsigned char c;

 if (token->flags & DIGRAPH)
   spelling
     = digraph_spellings[(int) token->type - (int) CPP_FIRST_DIGRAPH];
 else if (token->flags & NAMED_OP)
   goto spell_ident;
 else
   spelling = TOKEN_NAME (token);

 while ((c = *spelling++) != '\0')
   *buffer++ = c;
      }
      break;

    spell_ident:
    case 131:
      if (forstring)
 {
   memcpy (buffer, NODE_NAME (token->val.node),
    NODE_LEN (token->val.node));
   buffer += NODE_LEN (token->val.node);
 }
      else
 {
   size_t i;
   const unsigned char * name = NODE_NAME (token->val.node);

   for (i = 0; i < NODE_LEN (token->val.node); i++)
     if (name[i] & ~0x7F)
       {
  i += utf8_to_ucn (buffer, name + i) - 1;
  buffer += 10;
       }
     else
       *buffer++ = NODE_NAME (token->val.node)[i];
 }
      break;

    case 130:
      memcpy (buffer, token->val.str.text, token->val.str.len);
      buffer += token->val.str.len;
      break;

    case 129:
      cpp_error (pfile, CPP_DL_ICE,
   "unspellable token %s", TOKEN_NAME (token));
      break;
    }

  return buffer;
}
