
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int TREE_NO_WARNING ;


 int diagnose_mismatched_decls (int *,int *,int **,int **) ;
 int merge_decls (int *,int *,int *,int *) ;

__attribute__((used)) static bool
duplicate_decls (tree newdecl, tree olddecl)
{
  tree newtype = ((void*)0), oldtype = ((void*)0);

  if (!diagnose_mismatched_decls (newdecl, olddecl, &newtype, &oldtype))
    {

      TREE_NO_WARNING (olddecl) = 1;
      return 0;
    }

  merge_decls (newdecl, olddecl, newtype, oldtype);
  return 1;
}
