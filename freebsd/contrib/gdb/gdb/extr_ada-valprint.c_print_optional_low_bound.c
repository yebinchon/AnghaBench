
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef int LONGEST ;


 int TYPE_CODE (struct type*) ;

 int TYPE_CODE_RANGE ;

 long TYPE_FIELD_BITPOS (struct type*,int ) ;
 struct type* TYPE_INDEX_TYPE (struct type*) ;
 long TYPE_LOW_BOUND (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int ada_print_scalar (struct type*,int ,struct ui_file*) ;
 struct type* builtin_type_long ;
 int fprintf_filtered (struct ui_file*,char*) ;

__attribute__((used)) static int
print_optional_low_bound (struct ui_file *stream, struct type *type)
{
  struct type *index_type;
  long low_bound;

  index_type = TYPE_INDEX_TYPE (type);
  low_bound = 0;

  if (index_type == ((void*)0))
    return 0;
  if (TYPE_CODE (index_type) == TYPE_CODE_RANGE)
    {
      low_bound = TYPE_LOW_BOUND (index_type);
      index_type = TYPE_TARGET_TYPE (index_type);
    }
  else
    return 0;

  switch (TYPE_CODE (index_type))
    {
    case 129:
      if (low_bound == TYPE_FIELD_BITPOS (index_type, 0))
 return 0;
      break;
    case 128:
      index_type = builtin_type_long;

    default:
      if (low_bound == 1)
 return 0;
      break;
    }

  ada_print_scalar (index_type, (LONGEST) low_bound, stream);
  fprintf_filtered (stream, " => ");
  return 1;
}
