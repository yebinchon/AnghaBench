
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 int build_empty_stmt () ;
 scalar_t__ default_def (scalar_t__) ;
 scalar_t__ make_ssa_name (scalar_t__,int ) ;
 int set_default_def (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline tree
get_default_def_for (tree sym)
{
  tree ddef = default_def (sym);

  if (ddef == NULL_TREE)
    {
      ddef = make_ssa_name (sym, build_empty_stmt ());
      set_default_def (sym, ddef);
    }

  return ddef;
}
