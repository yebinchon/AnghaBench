
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_FLAG_ADDRESS_CLASS_ALL ;
 int TYPE_FLAG_CODE_SPACE ;
 int TYPE_FLAG_DATA_SPACE ;
 int TYPE_INSTANCE_FLAGS (struct type*) ;
 struct type* make_qualified_type (struct type*,int,int *) ;

struct type *
make_type_with_address_space (struct type *type, int space_flag)
{
  struct type *ntype;
  int new_flags = ((TYPE_INSTANCE_FLAGS (type)
      & ~(TYPE_FLAG_CODE_SPACE | TYPE_FLAG_DATA_SPACE
          | TYPE_FLAG_ADDRESS_CLASS_ALL))
     | space_flag);

  return make_qualified_type (type, new_flags, ((void*)0));
}
