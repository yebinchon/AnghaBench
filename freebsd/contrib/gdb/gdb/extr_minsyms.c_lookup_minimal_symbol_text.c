
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {struct minimal_symbol** msymbol_hash; struct objfile* next; } ;
struct minimal_symbol {struct minimal_symbol* hash_next; } ;


 unsigned int MINIMAL_SYMBOL_HASH_SIZE ;
 int MSYMBOL_TYPE (struct minimal_symbol*) ;
 int SYMBOL_LINKAGE_NAME (struct minimal_symbol*) ;

 int mst_text ;
 unsigned int msymbol_hash (char const*) ;
 struct objfile* object_files ;
 scalar_t__ strcmp (int ,char const*) ;

struct minimal_symbol *
lookup_minimal_symbol_text (const char *name, struct objfile *objf)
{
  struct objfile *objfile;
  struct minimal_symbol *msymbol;
  struct minimal_symbol *found_symbol = ((void*)0);
  struct minimal_symbol *found_file_symbol = ((void*)0);

  unsigned int hash = msymbol_hash (name) % MINIMAL_SYMBOL_HASH_SIZE;

  for (objfile = object_files;
       objfile != ((void*)0) && found_symbol == ((void*)0);
       objfile = objfile->next)
    {
      if (objf == ((void*)0) || objf == objfile)
 {
   for (msymbol = objfile->msymbol_hash[hash];
        msymbol != ((void*)0) && found_symbol == ((void*)0);
        msymbol = msymbol->hash_next)
     {
       if (strcmp (SYMBOL_LINKAGE_NAME (msymbol), name) == 0 &&
    (MSYMBOL_TYPE (msymbol) == mst_text ||
     MSYMBOL_TYPE (msymbol) == 128))
  {
    switch (MSYMBOL_TYPE (msymbol))
      {
      case 128:
        found_file_symbol = msymbol;
        break;
      default:
        found_symbol = msymbol;
        break;
      }
  }
     }
 }
    }

  if (found_symbol)
    return found_symbol;


  if (found_file_symbol)
    return found_file_symbol;

  return ((void*)0);
}
