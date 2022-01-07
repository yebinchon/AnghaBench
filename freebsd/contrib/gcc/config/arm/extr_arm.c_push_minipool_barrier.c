
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_4__ {struct TYPE_4__* next; int address; int insn; } ;
typedef TYPE_1__ Mfix ;
typedef int HOST_WIDE_INT ;


 TYPE_1__* minipool_fix_head ;
 TYPE_1__* minipool_fix_tail ;
 int minipool_obstack ;
 scalar_t__ obstack_alloc (int *,int) ;

__attribute__((used)) static void
push_minipool_barrier (rtx insn, HOST_WIDE_INT address)
{
  Mfix * fix = (Mfix *) obstack_alloc (&minipool_obstack, sizeof (* fix));

  fix->insn = insn;
  fix->address = address;

  fix->next = ((void*)0);
  if (minipool_fix_head != ((void*)0))
    minipool_fix_tail->next = fix;
  else
    minipool_fix_head = fix;

  minipool_fix_tail = fix;
}
