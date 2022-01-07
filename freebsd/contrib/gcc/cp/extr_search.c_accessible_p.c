
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ access_kind ;


 scalar_t__ BINFO_TYPE (scalar_t__) ;
 scalar_t__ DECL_THUNK_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 int TYPE_P (scalar_t__) ;
 scalar_t__ access_in_type (scalar_t__,scalar_t__) ;
 scalar_t__ ak_protected ;
 scalar_t__ ak_public ;
 scalar_t__ context_for_name_lookup (scalar_t__) ;
 scalar_t__ current_class_type ;
 scalar_t__ current_scope () ;
 int dfs_accessible_post ;
 scalar_t__ dfs_walk_once_accessible (scalar_t__,int,int *,int ,int *) ;
 int friend_accessible_p (scalar_t__,scalar_t__,scalar_t__) ;
 int processing_template_decl ;
 int processing_template_parmlist ;
 int protected_accessible_p (scalar_t__,scalar_t__,scalar_t__) ;

int
accessible_p (tree type, tree decl, bool consider_local_p)
{
  tree binfo;
  tree scope;
  access_kind access;



  int protected_ok = 0;



  if (!TYPE_P (context_for_name_lookup (decl)))
    return 1;


  scope = current_scope ();
  if (scope && DECL_THUNK_P (scope))
    return 1;
  if (processing_template_decl
      && (!processing_template_parmlist || processing_template_decl > 1))
    return 1;

  if (!TYPE_P (type))
    {
      binfo = type;
      type = BINFO_TYPE (type);
    }
  else
    binfo = TYPE_BINFO (type);
  if (consider_local_p)
    {



      if (current_class_type)
 protected_ok = protected_accessible_p (decl,
            current_class_type, binfo);


      if (!protected_ok)
 protected_ok = friend_accessible_p (scope, decl, binfo);
    }



  binfo = TYPE_BINFO (type);



  access = access_in_type (type, decl);
  if (access == ak_public
      || (access == ak_protected && protected_ok))
    return 1;

  if (!consider_local_p)
    return 0;



  return dfs_walk_once_accessible (binfo, 1,
       ((void*)0), dfs_accessible_post, ((void*)0))
    != NULL_TREE;
}
