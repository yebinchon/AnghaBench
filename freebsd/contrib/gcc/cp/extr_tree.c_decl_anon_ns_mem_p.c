
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_PUBLIC (scalar_t__) ;
 scalar_t__ TYPE_NAME (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ error_mark_node ;

bool
decl_anon_ns_mem_p (tree decl)
{
  while (1)
    {
      if (decl == NULL_TREE || decl == error_mark_node)
 return 0;
      if (TREE_CODE (decl) == NAMESPACE_DECL
   && DECL_NAME (decl) == NULL_TREE)
 return 1;


      else if (TYPE_P (decl))
 return (TREE_PUBLIC (TYPE_NAME (decl)) == 0);
      else if (TREE_CODE (decl) == NAMESPACE_DECL)
 return (TREE_PUBLIC (decl) == 0);
      else
 decl = DECL_CONTEXT (decl);
    }
}
