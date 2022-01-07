
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iv_ca_delta {struct iv_ca_delta* next_change; } ;


 int free (struct iv_ca_delta*) ;

__attribute__((used)) static void
iv_ca_delta_free (struct iv_ca_delta **delta)
{
  struct iv_ca_delta *act, *next;

  for (act = *delta; act; act = next)
    {
      next = act->next_change;
      free (act);
    }

  *delta = ((void*)0);
}
