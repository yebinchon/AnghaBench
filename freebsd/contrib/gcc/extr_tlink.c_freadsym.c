
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chosen; int * file; } ;
typedef TYPE_1__ symbol ;
typedef int file ;
typedef int FILE ;


 int file_push (int *) ;
 TYPE_1__* symbol_hash_lookup (char const*,int) ;
 int symbol_push (TYPE_1__*) ;
 char* tfgets (int *) ;

__attribute__((used)) static void
freadsym (FILE *stream, file *f, int chosen)
{
  symbol *sym;

  {
    const char *name = tfgets (stream);
    sym = symbol_hash_lookup (name, 1);
  }

  if (sym->file == ((void*)0))
    {


      symbol_push (sym);
      sym->file = f;
      sym->chosen = chosen;
    }
  else if (chosen)
    {


      if (sym->chosen && sym->file != f)
 {
   if (sym->chosen == 1)
     file_push (sym->file);
   else
     {
       file_push (f);
       f = sym->file;
       chosen = sym->chosen;
     }
 }
      sym->file = f;
      sym->chosen = chosen;
    }
}
