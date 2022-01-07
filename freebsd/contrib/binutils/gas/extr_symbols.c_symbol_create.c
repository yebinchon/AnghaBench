
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int valueT ;
struct TYPE_10__ {int * sy_frag; int * bsym; } ;
typedef TYPE_1__ symbolS ;
typedef int segT ;
typedef int fragS ;


 int S_SET_NAME (TYPE_1__*,char*) ;
 int S_SET_SEGMENT (TYPE_1__*,int ) ;
 int S_SET_VALUE (TYPE_1__*,int ) ;
 int as_fatal (char*,int ) ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int * bfd_make_empty_symbol (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int notes ;
 int obj_symbol_new_hook (TYPE_1__*) ;
 scalar_t__ obstack_alloc (int *,int) ;
 char* save_symbol_name (char const*) ;
 int stdoutput ;
 int symbol_clear_list_pointers (TYPE_1__*) ;
 int tc_symbol_new_hook (TYPE_1__*) ;

symbolS *
symbol_create (const char *name,
        segT segment,
        valueT valu,
        fragS *frag )
{
  char *preserved_copy_of_name;
  symbolS *symbolP;

  preserved_copy_of_name = save_symbol_name (name);

  symbolP = (symbolS *) obstack_alloc (&notes, sizeof (symbolS));


  memset (symbolP, 0, sizeof (symbolS));

  symbolP->bsym = bfd_make_empty_symbol (stdoutput);
  if (symbolP->bsym == ((void*)0))
    as_fatal ("bfd_make_empty_symbol: %s", bfd_errmsg (bfd_get_error ()));
  S_SET_NAME (symbolP, preserved_copy_of_name);

  S_SET_SEGMENT (symbolP, segment);
  S_SET_VALUE (symbolP, valu);
  symbol_clear_list_pointers (symbolP);

  symbolP->sy_frag = frag;

  obj_symbol_new_hook (symbolP);





  return symbolP;
}
