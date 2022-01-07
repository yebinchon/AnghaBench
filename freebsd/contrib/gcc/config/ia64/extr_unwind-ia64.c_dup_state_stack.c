
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_reg_state {struct unw_reg_state* next; } ;


 struct unw_reg_state* alloc_reg_state () ;
 int memcpy (struct unw_reg_state*,struct unw_reg_state*,int) ;

__attribute__((used)) static struct unw_reg_state *
dup_state_stack (struct unw_reg_state *rs)
{
  struct unw_reg_state *copy, *prev = ((void*)0), *first = ((void*)0);

  while (rs)
    {
      copy = alloc_reg_state ();
      memcpy (copy, rs, sizeof(*copy));
      if (first)
 prev->next = copy;
      else
 first = copy;
      rs = rs->next;
      prev = copy;
    }

  return first;
}
