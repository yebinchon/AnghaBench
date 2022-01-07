
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbolS ;
typedef int combined_entry_type ;
struct TYPE_2__ {int * native; } ;


 int OBJ_COFF_MAX_AUXENTRIES ;
 int SF_SET_LOCAL (int *) ;
 int SF_SET_STRING (int *) ;
 scalar_t__ S_IS_LOCAL (int *) ;
 scalar_t__ S_IS_STRING (int *) ;
 int S_SET_DATA_TYPE (int *,int ) ;
 int S_SET_NUMBER_AUXILIARY (int *,int ) ;
 int S_SET_STORAGE_CLASS (int *,int ) ;
 int T_NULL ;
 TYPE_1__* coffsymbol (int ) ;
 int memset (char*,int ,long) ;
 int symbol_get_bfdsym (int *) ;
 char* xmalloc (long) ;

void
coff_obj_symbol_new_hook (symbolS *symbolP)
{
  long sz = (OBJ_COFF_MAX_AUXENTRIES + 1) * sizeof (combined_entry_type);
  char * s = xmalloc (sz);

  memset (s, 0, sz);
  coffsymbol (symbol_get_bfdsym (symbolP))->native = (combined_entry_type *) s;

  S_SET_DATA_TYPE (symbolP, T_NULL);
  S_SET_STORAGE_CLASS (symbolP, 0);
  S_SET_NUMBER_AUXILIARY (symbolP, 0);

  if (S_IS_STRING (symbolP))
    SF_SET_STRING (symbolP);

  if (S_IS_LOCAL (symbolP))
    SF_SET_LOCAL (symbolP);
}
