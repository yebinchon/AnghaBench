
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_NFIELDS (struct type*) ;
 struct type* desc_base_type (struct type*) ;

__attribute__((used)) static int
desc_arity (struct type *type)
{
  type = desc_base_type (type);

  if (type != ((void*)0))
    return TYPE_NFIELDS (type) / 2;
  return 0;
}
