
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_reg_state {int dummy; } ;


 scalar_t__ PTR_IN (struct unw_reg_state*,struct unw_reg_state*) ;
 int atomic_free (int *,struct unw_reg_state*) ;
 struct unw_reg_state* emergency_reg_state ;
 int emergency_reg_state_free ;
 int free (struct unw_reg_state*) ;
 int reg_state_alloced ;

__attribute__((used)) static void
free_reg_state (struct unw_reg_state *rs)
{




  if (PTR_IN (emergency_reg_state, rs))
    atomic_free (&emergency_reg_state_free, rs - emergency_reg_state);
  else
    free (rs);
}
