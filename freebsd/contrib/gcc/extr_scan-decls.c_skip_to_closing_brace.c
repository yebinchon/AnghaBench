
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
typedef int cpp_reader ;
struct TYPE_2__ {int type; } ;


 int CPP_CLOSE_BRACE ;
 int CPP_EOF ;
 int CPP_OPEN_BRACE ;
 TYPE_1__* get_a_token (int *) ;

__attribute__((used)) static void
skip_to_closing_brace (cpp_reader *pfile)
{
  int nesting = 1;
  for (;;)
    {
      enum cpp_ttype token = get_a_token (pfile)->type;

      if (token == CPP_EOF)
 break;
      if (token == CPP_OPEN_BRACE)
 nesting++;
      if (token == CPP_CLOSE_BRACE && --nesting == 0)
 break;
    }
}
