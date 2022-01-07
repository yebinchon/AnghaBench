
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ OMP_CLAUSE_CHAIN (scalar_t__) ;
 int OMP_CLAUSE_CODE (scalar_t__) ;
 int error (char*,char const*) ;

__attribute__((used)) static void
check_no_duplicate_clause (tree clauses, enum tree_code code, const char *name)
{
  tree c;

  for (c = clauses; c ; c = OMP_CLAUSE_CHAIN (c))
    if (OMP_CLAUSE_CODE (c) == code)
      {
 error ("too many %qs clauses", name);
 break;
      }
}
