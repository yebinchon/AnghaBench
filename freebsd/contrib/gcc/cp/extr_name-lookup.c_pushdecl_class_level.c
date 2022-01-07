
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int location_t ;


 scalar_t__ ANON_AGGR_TYPE_P (int ) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 int DECL_SOURCE_LOCATION (scalar_t__) ;
 scalar_t__ OVERLOAD ;
 int POP_TIMEVAR_AND_RETURN (int ,int) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int TV_NAME_LOOKUP ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ TYPE_FIELDS (int ) ;
 scalar_t__ get_first_fn (scalar_t__) ;
 int input_location ;
 int push_class_level_binding (scalar_t__,scalar_t__) ;
 int set_identifier_type_value (scalar_t__,scalar_t__) ;
 int timevar_push (int ) ;

bool
pushdecl_class_level (tree x)
{
  tree name;
  bool is_valid = 1;

  timevar_push (TV_NAME_LOOKUP);

  if (TREE_CODE (x) == OVERLOAD)
    name = DECL_NAME (get_first_fn (x));
  else
    name = DECL_NAME (x);

  if (name)
    {
      is_valid = push_class_level_binding (name, x);
      if (TREE_CODE (x) == TYPE_DECL)
 set_identifier_type_value (name, x);
    }
  else if (ANON_AGGR_TYPE_P (TREE_TYPE (x)))
    {



      tree f;

      for (f = TYPE_FIELDS (TREE_TYPE (x)); f; f = TREE_CHAIN (f))
 {
   location_t save_location = input_location;
   input_location = DECL_SOURCE_LOCATION (f);
   if (!pushdecl_class_level (f))
     is_valid = 0;
   input_location = save_location;
 }
    }
  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, is_valid);
}
