
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct srec_symbol {char const* name; struct srec_symbol* next; int val; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_7__ {TYPE_1__* srec_data; } ;
struct TYPE_8__ {int symcount; TYPE_2__ tdata; } ;
typedef TYPE_3__ bfd ;
struct TYPE_6__ {struct srec_symbol* symtail; struct srec_symbol* symbols; } ;


 int FALSE ;
 int TRUE ;
 struct srec_symbol* bfd_alloc (TYPE_3__*,int) ;

__attribute__((used)) static bfd_boolean
srec_new_symbol (bfd *abfd, const char *name, bfd_vma val)
{
  struct srec_symbol *n;

  n = bfd_alloc (abfd, sizeof (* n));
  if (n == ((void*)0))
    return FALSE;

  n->name = name;
  n->val = val;

  if (abfd->tdata.srec_data->symbols == ((void*)0))
    abfd->tdata.srec_data->symbols = n;
  else
    abfd->tdata.srec_data->symtail->next = n;
  abfd->tdata.srec_data->symtail = n;
  n->next = ((void*)0);

  ++abfd->symcount;

  return TRUE;
}
