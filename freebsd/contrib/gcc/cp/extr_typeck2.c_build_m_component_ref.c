
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;


 int COMPLETE_TYPE_P (char*) ;
 int IS_AGGR_TYPE (char*) ;
 int OFFSET_REF ;
 int PLUS_EXPR ;
 char* TREE_TYPE (char*) ;
 char* TYPE_MAIN_VARIANT (char*) ;
 int TYPE_PTRMEM_CLASS_TYPE (char*) ;
 scalar_t__ TYPE_PTRMEM_P (char*) ;
 char* TYPE_PTRMEM_POINTED_TO_TYPE (char*) ;
 int TYPE_PTR_TO_MEMBER_P (char*) ;
 int ba_check ;
 char* build2 (int ,char*,char*,char*) ;
 char* build_address (char*) ;
 char* build_base_path (int ,char*,char*,int) ;
 char* build_indirect_ref (char*,int ) ;
 char* build_nop (int ,char*) ;
 char* build_pointer_type (char*) ;
 char* complete_type (int ) ;
 char* cp_build_qualified_type (char*,int) ;
 int cp_type_quals (char*) ;
 int error (char*,char*,char*,...) ;
 char* error_mark_node ;
 scalar_t__ error_operand_p (char*) ;
 char* lookup_base (char*,char*,int ,int *) ;
 int ptrdiff_type_node ;
 int same_type_p (char*,char*) ;

tree
build_m_component_ref (tree datum, tree component)
{
  tree ptrmem_type;
  tree objtype;
  tree type;
  tree binfo;
  tree ctype;

  if (error_operand_p (datum) || error_operand_p (component))
    return error_mark_node;

  ptrmem_type = TREE_TYPE (component);
  if (!TYPE_PTR_TO_MEMBER_P (ptrmem_type))
    {
      error ("%qE cannot be used as a member pointer, since it is of "
      "type %qT",
      component, ptrmem_type);
      return error_mark_node;
    }

  objtype = TYPE_MAIN_VARIANT (TREE_TYPE (datum));
  if (! IS_AGGR_TYPE (objtype))
    {
      error ("cannot apply member pointer %qE to %qE, which is of "
      "non-class type %qT",
      component, datum, objtype);
      return error_mark_node;
    }

  type = TYPE_PTRMEM_POINTED_TO_TYPE (ptrmem_type);
  ctype = complete_type (TYPE_PTRMEM_CLASS_TYPE (ptrmem_type));

  if (!COMPLETE_TYPE_P (ctype))
    {
      if (!same_type_p (ctype, objtype))
 goto mismatch;
      binfo = ((void*)0);
    }
  else
    {
      binfo = lookup_base (objtype, ctype, ba_check, ((void*)0));

      if (!binfo)
 {
 mismatch:
   error ("pointer to member type %qT incompatible with object "
   "type %qT",
   type, objtype);
   return error_mark_node;
 }
      else if (binfo == error_mark_node)
 return error_mark_node;
    }

  if (TYPE_PTRMEM_P (ptrmem_type))
    {




      type = cp_build_qualified_type (type,
          (cp_type_quals (type)
           | cp_type_quals (TREE_TYPE (datum))));

      datum = build_address (datum);


      if (binfo)
 datum = build_base_path (PLUS_EXPR, datum, binfo, 1);



      datum = build2 (PLUS_EXPR, build_pointer_type (type),
        datum, build_nop (ptrdiff_type_node, component));
      return build_indirect_ref (datum, 0);
    }
  else
    return build2 (OFFSET_REF, type, datum, component);
}
