
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum dtor_kinds { ____Placeholder_dtor_kinds } dtor_kinds ;
struct TYPE_2__ {int (* is_destructor_name ) (char const*) ;} ;


 TYPE_1__ current_cp_abi ;
 int error (char*) ;
 int stub1 (char const*) ;

enum dtor_kinds
is_destructor_name (const char *name)
{
  if ((current_cp_abi.is_destructor_name) == ((void*)0))
    error ("ABI doesn't define required function is_destructor_name");
  return (*current_cp_abi.is_destructor_name) (name);
}
