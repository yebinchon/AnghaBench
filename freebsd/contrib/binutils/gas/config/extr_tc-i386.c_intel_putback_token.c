
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int op_string; } ;
struct TYPE_4__ {scalar_t__ code; int * str; int * reg; } ;


 scalar_t__ T_NIL ;
 TYPE_1__ cur_token ;
 int free (int *) ;
 TYPE_2__ intel_parser ;
 TYPE_1__ prev_token ;
 scalar_t__ strlen (int *) ;

__attribute__((used)) static void
intel_putback_token (void)
{
  if (cur_token.code != T_NIL)
    {
      intel_parser.op_string -= strlen (cur_token.str);
      free (cur_token.str);
    }
  cur_token = prev_token;


  prev_token.code = T_NIL;
  prev_token.reg = ((void*)0);
  prev_token.str = ((void*)0);
}
