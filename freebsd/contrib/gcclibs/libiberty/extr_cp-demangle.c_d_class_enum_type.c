
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;


 struct demangle_component* d_name (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_class_enum_type (struct d_info *di)
{
  return d_name (di);
}
