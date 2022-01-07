
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int param_info ;


 scalar_t__ compiler_params ;
 int memcpy (scalar_t__,int const*,size_t) ;
 size_t num_compiler_params ;
 scalar_t__ xrealloc (scalar_t__,size_t) ;

void
add_params (const param_info params[], size_t n)
{

  compiler_params = xrealloc (compiler_params,
         (num_compiler_params + n) * sizeof (param_info));

  memcpy (compiler_params + num_compiler_params,
   params,
   n * sizeof (param_info));

  num_compiler_params += n;
}
