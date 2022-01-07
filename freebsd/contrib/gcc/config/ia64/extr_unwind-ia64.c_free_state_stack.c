
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_reg_state {struct unw_reg_state* next; } ;


 int free_reg_state (struct unw_reg_state*) ;

__attribute__((used)) static void
free_state_stack (struct unw_reg_state *rs)
{
  struct unw_reg_state *p, *next;

  for (p = rs->next; p != ((void*)0); p = next)
    {
      next = p->next;
      free_reg_state (p);
    }
  rs->next = ((void*)0);
}
