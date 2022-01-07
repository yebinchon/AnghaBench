
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int len; } ;
struct TYPE_7__ {int node; TYPE_1__ str; } ;
struct TYPE_8__ {TYPE_2__ val; } ;
typedef TYPE_3__ cpp_token ;


 int NODE_LEN (int ) ;


 int TOKEN_SPELL (TYPE_3__ const*) ;

unsigned int
cpp_token_len (const cpp_token *token)
{
  unsigned int len;

  switch (TOKEN_SPELL (token))
    {
    default: len = 4; break;
    case 128: len = token->val.str.len; break;
    case 129: len = NODE_LEN (token->val.node) * 10; break;
    }

  return len;
}
