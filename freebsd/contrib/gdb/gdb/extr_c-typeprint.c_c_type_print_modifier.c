
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_REF ;
 scalar_t__ TYPE_CONST (struct type*) ;
 int TYPE_INSTANCE_FLAGS (struct type*) ;
 scalar_t__ TYPE_VOLATILE (struct type*) ;
 char* address_space_int_to_name (int ) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;

__attribute__((used)) static void
c_type_print_modifier (struct type *type, struct ui_file *stream,
         int need_pre_space, int need_post_space)
{
  int did_print_modifier = 0;
  const char *address_space_id;




  if (TYPE_CONST (type)
      && TYPE_CODE (type) != TYPE_CODE_REF)
    {
      if (need_pre_space)
 fprintf_filtered (stream, " ");
      fprintf_filtered (stream, "const");
      did_print_modifier = 1;
    }

  if (TYPE_VOLATILE (type))
    {
      if (did_print_modifier || need_pre_space)
 fprintf_filtered (stream, " ");
      fprintf_filtered (stream, "volatile");
      did_print_modifier = 1;
    }

  address_space_id = address_space_int_to_name (TYPE_INSTANCE_FLAGS (type));
  if (address_space_id)
    {
      if (did_print_modifier || need_pre_space)
 fprintf_filtered (stream, " ");
      fprintf_filtered (stream, "@%s", address_space_id);
      did_print_modifier = 1;
    }

  if (did_print_modifier && need_post_space)
    fprintf_filtered (stream, " ");
}
