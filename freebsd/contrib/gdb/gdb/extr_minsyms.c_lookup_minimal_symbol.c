
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {struct minimal_symbol** msymbol_demangled_hash; struct minimal_symbol** msymbol_hash; struct objfile* next; } ;
struct minimal_symbol {struct minimal_symbol* demangled_hash_next; struct minimal_symbol* hash_next; int filename; } ;


 int DEPRECATED_SYMBOL_NAME (struct minimal_symbol*) ;
 unsigned int MINIMAL_SYMBOL_HASH_SIZE ;
 int MSYMBOL_TYPE (struct minimal_symbol*) ;
 int * SYMBOL_DEMANGLED_NAME (struct minimal_symbol*) ;





 unsigned int msymbol_hash (char const*) ;
 unsigned int msymbol_hash_iw (char const*) ;
 struct objfile* object_files ;
 scalar_t__ strcmp (int ,char const*) ;
 scalar_t__ strcmp_iw (int *,char const*) ;
 char* strrchr (char const*,char) ;

struct minimal_symbol *
lookup_minimal_symbol (const char *name, const char *sfile,
         struct objfile *objf)
{
  struct objfile *objfile;
  struct minimal_symbol *msymbol;
  struct minimal_symbol *found_symbol = ((void*)0);
  struct minimal_symbol *found_file_symbol = ((void*)0);
  struct minimal_symbol *trampoline_symbol = ((void*)0);

  unsigned int hash = msymbol_hash (name) % MINIMAL_SYMBOL_HASH_SIZE;
  unsigned int dem_hash = msymbol_hash_iw (name) % MINIMAL_SYMBOL_HASH_SIZE;
  for (objfile = object_files;
       objfile != ((void*)0) && found_symbol == ((void*)0);
       objfile = objfile->next)
    {
      if (objf == ((void*)0) || objf == objfile)
 {


        int pass;

        for (pass = 1; pass <= 2 && found_symbol == ((void*)0); pass++)
     {

            if (pass == 1)
              msymbol = objfile->msymbol_hash[hash];
            else
              msymbol = objfile->msymbol_demangled_hash[dem_hash];

            while (msymbol != ((void*)0) && found_symbol == ((void*)0))
  {





    if (strcmp (DEPRECATED_SYMBOL_NAME (msymbol), (name)) == 0
        || (SYMBOL_DEMANGLED_NAME (msymbol) != ((void*)0)
     && strcmp_iw (SYMBOL_DEMANGLED_NAME (msymbol),
     (name)) == 0))
      {
                    switch (MSYMBOL_TYPE (msymbol))
                      {
                      case 130:
                      case 131:
                      case 132:
                        found_file_symbol = msymbol;

                        break;

                      case 129:





                        if (trampoline_symbol == ((void*)0))
                          trampoline_symbol = msymbol;
                        break;

                      case 128:
                      default:
                        found_symbol = msymbol;
                        break;
                      }
      }


                if (pass == 1)
                  msymbol = msymbol->hash_next;
                else
                  msymbol = msymbol->demangled_hash_next;
  }
     }
 }
    }

  if (found_symbol)
    return found_symbol;


  if (found_file_symbol)
    return found_file_symbol;


  if (trampoline_symbol)
    return trampoline_symbol;

  return ((void*)0);
}
