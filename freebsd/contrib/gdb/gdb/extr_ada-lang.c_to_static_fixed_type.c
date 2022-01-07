
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 int TYPE_CODE (struct type*) ;


 struct type* ada_find_parallel_type (struct type*,char*) ;
 struct type* dynamic_template_type (struct type*) ;
 struct type* template_to_static_fixed_type (struct type*) ;

__attribute__((used)) static struct type *
to_static_fixed_type (struct type *type0)
{
  struct type *type;

  if (type0 == ((void*)0))
    return ((void*)0);





  CHECK_TYPEDEF (type0);

  switch (TYPE_CODE (type0))
    {
    default:
      return type0;
    case 129:
      type = dynamic_template_type (type0);
      if (type != ((void*)0))
 return template_to_static_fixed_type (type);
      return type0;
    case 128:
      type = ada_find_parallel_type (type0, "___XVU");
      if (type != ((void*)0))
 return template_to_static_fixed_type (type);
      return type0;
    }
}
