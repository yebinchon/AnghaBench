
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ cpp_token ;
typedef int cpp_reader ;


 scalar_t__ CPP_PADDING ;
 TYPE_1__* cpp_get_token (int *) ;

__attribute__((used)) static const cpp_token *
get_a_token (cpp_reader *pfile)
{
  for (;;)
    {
      const cpp_token *result = cpp_get_token (pfile);
      if (result->type != CPP_PADDING)
 return result;
    }
}
