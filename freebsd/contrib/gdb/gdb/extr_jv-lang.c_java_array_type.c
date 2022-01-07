
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int builtin_type_int ;
 struct type* create_array_type (int *,struct type*,struct type*) ;
 struct type* create_range_type (int *,int ,int ,int ) ;

struct type *
java_array_type (struct type *type, int dims)
{
  struct type *range_type;

  while (dims-- > 0)
    {
      range_type = create_range_type (((void*)0), builtin_type_int, 0, 0);

      type = create_array_type (((void*)0), type, range_type);
    }

  return type;
}
