
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_CONTEXT (int ) ;
 int FIELD_DECL ;
 int PLUS_EXPR ;

 int PTRMEM_CST_MEMBER (int ) ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_PTRMEM_CLASS_TYPE (int ) ;
 int build_nop (int ,int ) ;
 int build_ptrmemfunc1 (int ,int ,int ) ;
 int byte_position (int ) ;
 int expand_ptrmemfunc_cst (int ,int *,int *) ;
 int fold (int ) ;
 int lookup_anon_field (int ,int ) ;
 int same_type_p (int ,int ) ;
 int size_binop (int ,int ,int ) ;

tree
cplus_expand_constant (tree cst)
{
  switch (TREE_CODE (cst))
    {
    case 128:
      {
 tree type = TREE_TYPE (cst);
 tree member;


 member = PTRMEM_CST_MEMBER (cst);

 if (TREE_CODE (member) == FIELD_DECL)
   {

     cst = byte_position (member);
     while (!same_type_p (DECL_CONTEXT (member),
     TYPE_PTRMEM_CLASS_TYPE (type)))
       {



  member = lookup_anon_field (TYPE_PTRMEM_CLASS_TYPE (type),
         DECL_CONTEXT (member));
  cst = size_binop (PLUS_EXPR, cst, byte_position (member));
       }
     cst = fold (build_nop (type, cst));
   }
 else
   {
     tree delta;
     tree pfn;

     expand_ptrmemfunc_cst (cst, &delta, &pfn);
     cst = build_ptrmemfunc1 (type, delta, pfn);
   }
      }
      break;

    default:

      break;
    }

  return cst;
}
