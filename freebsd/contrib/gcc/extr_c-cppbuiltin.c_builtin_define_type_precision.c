
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TYPE_PRECISION (int ) ;
 int builtin_define_with_int_value (char const*,int ) ;

__attribute__((used)) static void
builtin_define_type_precision (const char *name, tree type)
{
  builtin_define_with_int_value (name, TYPE_PRECISION (type));
}
