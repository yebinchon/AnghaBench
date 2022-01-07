
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbolS ;
typedef int combined_entry_type ;
struct TYPE_2__ {int * native; } ;


 int OBJ_COFF_MAX_AUXENTRIES ;
 int SF_GET (int *) ;
 int SF_SET (int *,int ) ;
 TYPE_1__* coffsymbol (int ) ;
 int memcpy (int *,int *,long) ;
 int symbol_get_bfdsym (int *) ;
 int * xmalloc (long) ;

void
coff_obj_symbol_clone_hook (symbolS *newsymP, symbolS *orgsymP)
{
  long sz = (OBJ_COFF_MAX_AUXENTRIES + 1) * sizeof (combined_entry_type);
  combined_entry_type * s = xmalloc (sz);

  memcpy (s, coffsymbol (symbol_get_bfdsym (orgsymP))->native, sz);
  coffsymbol (symbol_get_bfdsym (newsymP))->native = s;

  SF_SET (newsymP, SF_GET (orgsymP));
}
