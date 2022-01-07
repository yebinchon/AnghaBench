
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {scalar_t__ implicit; } ;




 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;

 int constructor_designated ;
 scalar_t__ constructor_fields ;
 int constructor_range_stack ;
 TYPE_1__* constructor_stack ;
 scalar_t__ constructor_type ;
 int designator_depth ;
 scalar_t__ designator_erroneous ;
 int error_init (char*) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int pop_init_level (int) ;
 int process_init_element (int ) ;
 int push_init_level (int) ;

__attribute__((used)) static int
set_designator (int array)
{
  tree subtype;
  enum tree_code subcode;



  if (constructor_type == 0)
    return 1;



  if (designator_erroneous)
    return 1;

  if (!designator_depth)
    {
      gcc_assert (!constructor_range_stack);



      while (constructor_stack->implicit)
 process_init_element (pop_init_level (1));
      constructor_designated = 1;
      return 0;
    }

  switch (TREE_CODE (constructor_type))
    {
    case 129:
    case 128:
      subtype = TREE_TYPE (constructor_fields);
      if (subtype != error_mark_node)
 subtype = TYPE_MAIN_VARIANT (subtype);
      break;
    case 130:
      subtype = TYPE_MAIN_VARIANT (TREE_TYPE (constructor_type));
      break;
    default:
      gcc_unreachable ();
    }

  subcode = TREE_CODE (subtype);
  if (array && subcode != 130)
    {
      error_init ("array index in non-array initializer");
      return 1;
    }
  else if (!array && subcode != 129 && subcode != 128)
    {
      error_init ("field name not in record or union initializer");
      return 1;
    }

  constructor_designated = 1;
  push_init_level (2);
  return 0;
}
