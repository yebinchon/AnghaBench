
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef int LONGEST ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_RANGE ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 struct type* ada_find_any_type (char*) ;
 struct type* builtin_type_int ;
 int fprintf_filtered (struct ui_file*,char*) ;
 int print_dynamic_range_bound (struct type*,char*,int,char*,struct ui_file*) ;
 int print_range (struct type*,struct ui_file*) ;
 int print_range_bound (struct type*,char*,int*,struct ui_file*) ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void
print_range_type_named (char *name, struct ui_file *stream)
{
  struct type *raw_type = ada_find_any_type (name);
  struct type *base_type;
  LONGEST low, high;
  char *subtype_info;

  if (raw_type == ((void*)0))
    base_type = builtin_type_int;
  else if (TYPE_CODE (raw_type) == TYPE_CODE_RANGE)
    base_type = TYPE_TARGET_TYPE (raw_type);
  else
    base_type = raw_type;

  subtype_info = strstr (name, "___XD");
  if (subtype_info == ((void*)0) && raw_type == ((void*)0))
    fprintf_filtered (stream, "? .. ?");
  else if (subtype_info == ((void*)0))
    print_range (raw_type, stream);
  else
    {
      int prefix_len = subtype_info - name;
      char *bounds_str;
      int n;

      subtype_info += 5;
      bounds_str = strchr (subtype_info, '_');
      n = 1;

      if (*subtype_info == 'L')
 {
   print_range_bound (raw_type, bounds_str, &n, stream);
   subtype_info += 1;
 }
      else
 print_dynamic_range_bound (raw_type, name, prefix_len, "___L",
       stream);

      fprintf_filtered (stream, " .. ");

      if (*subtype_info == 'U')
 print_range_bound (raw_type, bounds_str, &n, stream);
      else
 print_dynamic_range_bound (raw_type, name, prefix_len, "___U",
       stream);
    }
}
