
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 int TYPE_FIELD_NAME (struct type*,int ) ;
 int TYPE_NFIELDS (struct type*) ;
 struct type* ada_find_any_type (int ) ;
 struct type* ada_find_parallel_type (struct type*,char*) ;

struct type *
ada_get_base_type (struct type *raw_type)
{
  struct type *real_type_namer;
  struct type *raw_real_type;
  struct type *real_type;

  if (raw_type == ((void*)0) || TYPE_CODE (raw_type) != TYPE_CODE_STRUCT)
    return raw_type;

  real_type_namer = ada_find_parallel_type (raw_type, "___XVS");
  if (real_type_namer == ((void*)0)
      || TYPE_CODE (real_type_namer) != TYPE_CODE_STRUCT
      || TYPE_NFIELDS (real_type_namer) != 1)
    return raw_type;

  raw_real_type = ada_find_any_type (TYPE_FIELD_NAME (real_type_namer, 0));
  if (raw_real_type == ((void*)0))
    return raw_type;
  else
    return raw_real_type;
}
