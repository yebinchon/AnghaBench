
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
typedef int CORE_ADDR ;


 int call_function_by_hand (struct value*,int,struct value**) ;
 int complaint (int *,char*) ;
 struct value* find_function_in_inferior (char*) ;
 scalar_t__ lookup_minimal_symbol (char*,int ,int ) ;
 scalar_t__ strlen (char*) ;
 int symfile_complaints ;
 int target_has_execution ;
 int value_as_long (int ) ;
 struct value* value_coerce_array (struct value*) ;
 struct value* value_string (char*,scalar_t__) ;

CORE_ADDR
lookup_objc_class (char *classname)
{
  struct value * function, *classval;

  if (! target_has_execution)
    {

      return 0;
    }

  if (lookup_minimal_symbol("objc_lookUpClass", 0, 0))
    function = find_function_in_inferior("objc_lookUpClass");
  else if (lookup_minimal_symbol ("objc_lookup_class", 0, 0))
    function = find_function_in_inferior("objc_lookup_class");
  else
    {
      complaint (&symfile_complaints, "no way to lookup Objective-C classes");
      return 0;
    }

  classval = value_string (classname, strlen (classname) + 1);
  classval = value_coerce_array (classval);
  return (CORE_ADDR) value_as_long (call_function_by_hand (function,
          1, &classval));
}
