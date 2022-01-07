
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_reg_state {int dummy; } ;


 int atomic_alloc (int *) ;
 struct unw_reg_state* emergency_reg_state ;
 int emergency_reg_state_free ;
 struct unw_reg_state* malloc (int) ;
 int reg_state_alloced ;

__attribute__((used)) static struct unw_reg_state *
alloc_reg_state (void)
{
  struct unw_reg_state *rs;





  rs = malloc (sizeof (struct unw_reg_state));
  if (!rs)
    {
      int n = atomic_alloc (&emergency_reg_state_free);
      if (n >= 0)
 rs = &emergency_reg_state[n];
    }

  return rs;
}
