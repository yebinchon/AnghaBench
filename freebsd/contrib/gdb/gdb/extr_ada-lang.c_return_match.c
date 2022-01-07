
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ENUM ;
 scalar_t__ TYPE_CODE_VOID ;

__attribute__((used)) static int
return_match (struct type *func_type, struct type *context_type)
{
  struct type *return_type;

  if (func_type == ((void*)0))
    return 1;






  if (return_type == ((void*)0))
    return 1;




  if (TYPE_CODE (return_type) == TYPE_CODE_ENUM)
    return context_type == ((void*)0) || return_type == context_type;
  else if (context_type == ((void*)0))
    return TYPE_CODE (return_type) != TYPE_CODE_VOID;
  else
    return TYPE_CODE (return_type) == TYPE_CODE (context_type);
}
