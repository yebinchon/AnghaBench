
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int use_operand_p ;
typedef scalar_t__ tree ;


 int SET_USE (int ,scalar_t__) ;
 scalar_t__ get_reaching_def (scalar_t__) ;

__attribute__((used)) static inline void
replace_use (use_operand_p use_p, tree use)
{
  tree rdef = get_reaching_def (use);
  if (rdef != use)
    SET_USE (use_p, rdef);
}
