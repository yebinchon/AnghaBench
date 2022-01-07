
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct pragma_entry* space; } ;
struct pragma_entry {TYPE_1__* pragma; TYPE_2__ u; scalar_t__ is_nspace; struct pragma_entry* next; } ;
struct TYPE_3__ {int ident; } ;


 scalar_t__ HT_LEN (int *) ;
 int HT_STR (int *) ;
 scalar_t__ xmemdup (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static char **
save_registered_pragmas (struct pragma_entry *pe, char **sd)
{
  for (; pe != ((void*)0); pe = pe->next)
    {
      if (pe->is_nspace)
 sd = save_registered_pragmas (pe->u.space, sd);
      *sd++ = (char *) xmemdup (HT_STR (&pe->pragma->ident),
                                HT_LEN (&pe->pragma->ident),
                                HT_LEN (&pe->pragma->ident) + 1);
    }
  return sd;
}
