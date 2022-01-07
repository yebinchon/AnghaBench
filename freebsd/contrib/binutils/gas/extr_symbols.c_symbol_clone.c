
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {struct TYPE_21__* sy_next; struct TYPE_21__* sy_previous; TYPE_2__* bsym; } ;
typedef TYPE_1__ symbolS ;
struct local_symbol {int dummy; } ;
struct TYPE_22__ {int section; int flags; int name; } ;
typedef TYPE_2__ asymbol ;


 scalar_t__ LOCAL_SYMBOL_CHECK (TYPE_1__*) ;
 int as_fatal (char*,int ) ;
 int bfd_asymbol_bfd (TYPE_2__*) ;
 int bfd_copy_private_symbol_data (int ,TYPE_2__*,int ,TYPE_2__*) ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 TYPE_2__* bfd_make_empty_symbol (int ) ;
 int debug_verify_symchain (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* local_symbol_convert (struct local_symbol*) ;
 int notes ;
 int obj_symbol_clone_hook (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* obstack_alloc (int *,int) ;
 TYPE_1__* symbol_lastP ;
 TYPE_1__* symbol_rootP ;
 int symbol_table_insert (TYPE_1__*) ;
 int tc_symbol_clone_hook (TYPE_1__*,TYPE_1__*) ;

symbolS *
symbol_clone (symbolS *orgsymP, int replace)
{
  symbolS *newsymP;
  asymbol *bsymorg, *bsymnew;





  if (LOCAL_SYMBOL_CHECK (orgsymP))
    orgsymP = local_symbol_convert ((struct local_symbol *) orgsymP);
  bsymorg = orgsymP->bsym;

  newsymP = obstack_alloc (&notes, sizeof (*newsymP));
  *newsymP = *orgsymP;
  bsymnew = bfd_make_empty_symbol (bfd_asymbol_bfd (bsymorg));
  if (bsymnew == ((void*)0))
    as_fatal ("bfd_make_empty_symbol: %s", bfd_errmsg (bfd_get_error ()));
  newsymP->bsym = bsymnew;
  bsymnew->name = bsymorg->name;
  bsymnew->flags = bsymorg->flags;
  bsymnew->section = bsymorg->section;
  bfd_copy_private_symbol_data (bfd_asymbol_bfd (bsymorg), bsymorg,
    bfd_asymbol_bfd (bsymnew), bsymnew);
  if (replace)
    {
      if (symbol_rootP == orgsymP)
 symbol_rootP = newsymP;
      else if (orgsymP->sy_previous)
 {
   orgsymP->sy_previous->sy_next = newsymP;
   orgsymP->sy_previous = ((void*)0);
 }
      if (symbol_lastP == orgsymP)
 symbol_lastP = newsymP;
      else if (orgsymP->sy_next)
 orgsymP->sy_next->sy_previous = newsymP;
      orgsymP->sy_previous = orgsymP->sy_next = orgsymP;
      debug_verify_symchain (symbol_rootP, symbol_lastP);

      symbol_table_insert (newsymP);
    }
  else
    newsymP->sy_previous = newsymP->sy_next = newsymP;

  return newsymP;
}
