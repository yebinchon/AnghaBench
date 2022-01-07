
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int ARRAY_TYPE ;


 scalar_t__ NULL_TREE ;

 int TREE_CODE (scalar_t__) ;
 int TYPE_DOMAIN (scalar_t__) ;

 int abstract_virtuals_error (scalar_t__,scalar_t__) ;
 scalar_t__ build_cplus_array_type (scalar_t__,scalar_t__) ;
 scalar_t__ compute_array_index_type (scalar_t__,scalar_t__) ;
 int error (char*,...) ;
 scalar_t__ error_mark_node ;

__attribute__((used)) static tree
create_array_type_for_decl (tree name, tree type, tree size)
{
  tree itype = NULL_TREE;
  const char* error_msg;


  if (type == error_mark_node || size == error_mark_node)
    return error_mark_node;


  error_msg = ((void*)0);


  switch (TREE_CODE (type))
    {
    case 128:
      error_msg = "array of void";
      break;

    case 131:
      error_msg = "array of functions";
      break;

    case 129:
      error_msg = "array of references";
      break;

    case 130:
      error_msg = "array of function members";
      break;

    default:
      break;
    }


  if (error_msg)
    {
      if (name)
 error ("declaration of %qD as %s", name, error_msg);
      else
 error ("creating %s", error_msg);

      return error_mark_node;
    }





  if (TREE_CODE (type) == ARRAY_TYPE && !TYPE_DOMAIN (type))
    {
      if (name)
 error ("declaration of %qD as multidimensional array must "
        "have bounds for all dimensions except the first",
        name);
      else
 error ("multidimensional array must have bounds for all "
        "dimensions except the first");

      return error_mark_node;
    }


  if (size)
    itype = compute_array_index_type (name, size);




  abstract_virtuals_error (name, type);

  return build_cplus_array_type (type, itype);
}
