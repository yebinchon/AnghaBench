
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; int text; } ;
struct TYPE_8__ {TYPE_1__ str; int node; int arg_no; } ;
struct TYPE_9__ {scalar_t__ type; scalar_t__ flags; TYPE_2__ val; } ;
typedef TYPE_3__ cpp_token ;


 scalar_t__ CPP_MACRO_ARG ;




 int TOKEN_SPELL (TYPE_3__ const*) ;
 int memcmp (int ,int ,int ) ;

int
_cpp_equiv_tokens (const cpp_token *a, const cpp_token *b)
{
  if (a->type == b->type && a->flags == b->flags)
    switch (TOKEN_SPELL (a))
      {
      default:
      case 128:
 return 1;
      case 129:
 return (a->type != CPP_MACRO_ARG || a->val.arg_no == b->val.arg_no);
      case 131:
 return a->val.node == b->val.node;
      case 130:
 return (a->val.str.len == b->val.str.len
  && !memcmp (a->val.str.text, b->val.str.text,
       a->val.str.len));
      }

  return 0;
}
