
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tweaked; scalar_t__ tweaking; int * file; } ;
typedef TYPE_1__ symbol ;
typedef int file ;


 TYPE_1__* symbol_hash_lookup (char*,int) ;

__attribute__((used)) static void
maybe_tweak (char *line, file *f)
{
  symbol *sym = symbol_hash_lookup (line + 2, 0);

  if ((sym->file == f && sym->tweaking)
      || (sym->file != f && line[0] == 'C'))
    {
      sym->tweaking = 0;
      sym->tweaked = 1;

      if (line[0] == 'O')
 line[0] = 'C';
      else
 line[0] = 'O';
    }
}
