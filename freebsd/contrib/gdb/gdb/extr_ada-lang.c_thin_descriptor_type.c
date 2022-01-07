
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 struct type* ada_find_parallel_type (struct type*,char*) ;
 int ada_type_name (struct type*) ;
 struct type* desc_base_type (struct type*) ;
 scalar_t__ is_suffix (int ,char*) ;

__attribute__((used)) static struct type *
thin_descriptor_type (struct type *type)
{
  struct type *base_type = desc_base_type (type);
  if (base_type == ((void*)0))
    return ((void*)0);
  if (is_suffix (ada_type_name (base_type), "___XVE"))
    return base_type;
  else
    {
      struct type *alt_type = ada_find_parallel_type (base_type, "___XVE");
      if (alt_type == ((void*)0))
 return base_type;
      else
 return alt_type;
    }
}
