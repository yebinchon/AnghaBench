
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_4__ {int node; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ val; } ;
typedef TYPE_2__ cpp_token ;


 scalar_t__ CPP_NAME ;
 int NODE_NAME (int ) ;
 int ustrcmp (int ,int const*) ;

int
cpp_ideq (const cpp_token *token, const char *string)
{
  if (token->type != CPP_NAME)
    return 0;

  return !ustrcmp (NODE_NAME (token->val.node), (const uchar *) string);
}
