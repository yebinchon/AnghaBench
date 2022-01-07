
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef int LONGEST ;


 int TYPE_CODE (struct type*) ;





 int TYPE_FIELD_BITPOS (struct type*,int) ;
 int TYPE_LOW_BOUND (struct type*) ;
 int TYPE_NAME (struct type*) ;
 int TYPE_NFIELDS (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int ada_name_prefix_len (int ) ;
 int ada_print_scalar (struct type*,int const,struct ui_file*) ;
 struct type* builtin_type_ada_int ;
 int fprintf_filtered (struct ui_file*,char*,...) ;

__attribute__((used)) static void
print_range (struct type *type, struct ui_file *stream)
{
  struct type *target_type;
  target_type = TYPE_TARGET_TYPE (type);
  if (target_type == ((void*)0))
    target_type = type;

  switch (TYPE_CODE (target_type))
    {
    case 128:
    case 129:
    case 132:
    case 131:
    case 130:
      break;
    default:
      target_type = builtin_type_ada_int;
      break;
    }

  if (TYPE_NFIELDS (type) < 2)
    {






      fprintf_filtered (stream, "%.*s",
   ada_name_prefix_len (TYPE_NAME (type)),
   TYPE_NAME (type));
    }
  else
    {


      const LONGEST lower_bound = (LONGEST) TYPE_LOW_BOUND (type);
      const LONGEST upper_bound =
 (LONGEST) TYPE_FIELD_BITPOS (type, TYPE_NFIELDS (type) - 1);

      ada_print_scalar (target_type, lower_bound, stream);
      fprintf_filtered (stream, " .. ");
      ada_print_scalar (target_type, upper_bound, stream);
    }
}
