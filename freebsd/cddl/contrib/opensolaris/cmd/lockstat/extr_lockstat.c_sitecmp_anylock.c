
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ls_event; scalar_t__* ls_stack; scalar_t__ ls_caller; } ;
typedef TYPE_1__ lsrec_t ;


 int g_stkdepth ;

__attribute__((used)) static int
sitecmp_anylock(lsrec_t *a, lsrec_t *b)
{
 int i;

 if (a->ls_event < b->ls_event)
  return (-1);
 if (a->ls_event > b->ls_event)
  return (1);

 for (i = g_stkdepth - 1; i >= 0; i--) {
  if (a->ls_stack[i] < b->ls_stack[i])
   return (-1);
  if (a->ls_stack[i] > b->ls_stack[i])
   return (1);
 }

 if (a->ls_caller < b->ls_caller)
  return (-1);
 if (a->ls_caller > b->ls_caller)
  return (1);

 return (0);
}
