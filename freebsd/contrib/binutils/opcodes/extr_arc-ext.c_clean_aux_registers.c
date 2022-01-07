
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ExtAuxRegister {struct ExtAuxRegister* name; struct ExtAuxRegister* next; } ;


 int free (struct ExtAuxRegister*) ;

__attribute__((used)) static void
clean_aux_registers(struct ExtAuxRegister *r)
{
  if (r -> next)
    {
      clean_aux_registers( r->next);
      free(r -> name);
      free(r -> next);
      r ->next = ((void*)0);
    }
  else
    free(r -> name);
}
