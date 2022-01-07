
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int ba_quiet ;
 int ba_unique ;
 scalar_t__ build_dummy_object (scalar_t__) ;
 scalar_t__ build_x_arrow (scalar_t__) ;
 scalar_t__ cur_block ;
 scalar_t__ current_class_ref ;
 scalar_t__ current_class_type ;
 int gcc_assert (scalar_t__) ;
 scalar_t__ lookup_base (scalar_t__,scalar_t__,int,int *) ;
 scalar_t__ lookup_name (int ) ;
 scalar_t__ same_type_p (int ,scalar_t__) ;
 int this_identifier ;

tree
maybe_dummy_object (tree type, tree* binfop)
{
  tree decl, context;
  tree binfo;

  if (current_class_type
      && (binfo = lookup_base (current_class_type, type,
          ba_unique | ba_quiet, ((void*)0))))
    context = current_class_type;
  else
    {

      context = type;
      binfo = TYPE_BINFO (type);
    }

  if (binfop)
    *binfop = binfo;

  if (current_class_ref && context == current_class_type



      && same_type_p (TYPE_MAIN_VARIANT (TREE_TYPE (current_class_ref)),
        current_class_type))
    decl = current_class_ref;

    else if (cur_block)
    {
      tree this_copiedin_var = lookup_name (this_identifier);
      gcc_assert (!current_class_ref);
      gcc_assert (this_copiedin_var);
      decl = build_x_arrow (this_copiedin_var);
    }

  else
    decl = build_dummy_object (context);

  return decl;
}
