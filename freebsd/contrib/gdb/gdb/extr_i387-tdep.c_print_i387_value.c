
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
typedef scalar_t__ DOUBLEST ;


 int builtin_type_i387_ext ;
 scalar_t__ extract_typed_floating (char*,int ) ;
 int fprintf_filtered (struct ui_file*,char*,double) ;

__attribute__((used)) static void
print_i387_value (char *raw, struct ui_file *file)
{
  DOUBLEST value;





  value = extract_typed_floating (raw, builtin_type_i387_ext);
  fprintf_filtered (file, " %-+27.19g", (double) value);

}
