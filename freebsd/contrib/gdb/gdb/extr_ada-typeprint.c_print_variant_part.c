
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 int TYPE_FIELD_TYPE (struct type*,int) ;
 int ada_variant_discrim_name (int ) ;
 int fprintf_filtered (struct ui_file*,char*,int,char*,...) ;
 int print_variant_clauses (struct type*,int,struct type*,struct ui_file*,int,int) ;

__attribute__((used)) static void
print_variant_part (struct type *type, int field_num, struct type *outer_type,
      struct ui_file *stream, int show, int level)
{
  fprintf_filtered (stream, "\n%*scase %s is", level + 4, "",
      ada_variant_discrim_name
      (TYPE_FIELD_TYPE (type, field_num)));
  print_variant_clauses (type, field_num, outer_type, stream, show,
    level + 4);
  fprintf_filtered (stream, "\n%*send case;", level + 4, "");
}
