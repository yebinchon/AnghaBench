
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 int ada_vax_float_type_suffix (struct type*) ;
 int fprintf_filtered (struct ui_file*,char*,int ) ;

__attribute__((used)) static void
print_vax_floating_point_type (struct type *type, struct ui_file *stream)
{
  fprintf_filtered (stream, "<float format %c>",
      ada_vax_float_type_suffix (type));
}
