
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_CODE_STRUCT ;
 int append_composite_type_field (struct type*,char*,struct type*) ;
 int builtin_type_int ;
 struct type* create_array_type (int ,struct type*,int ) ;
 int create_range_type (int ,int ,int ,int) ;
 struct type* init_composite_type (char*,int ) ;

__attribute__((used)) static struct type *
init_simd_type (char *name,
  struct type *elt_type,
  char *elt_name,
  int n)
{
  struct type *simd_type;
  struct type *array_type;

  simd_type = init_composite_type (name, TYPE_CODE_STRUCT);
  array_type = create_array_type (0, elt_type,
      create_range_type (0, builtin_type_int,
           0, n-1));
  append_composite_type_field (simd_type, elt_name, array_type);
  return simd_type;
}
