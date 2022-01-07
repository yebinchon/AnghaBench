
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pex_obj {int * sysdep; } ;
struct pex_msdos {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* statuses; struct TYPE_3__** files; } ;


 int PEX_MSDOS_FILE_COUNT ;
 int free (TYPE_1__*) ;
 TYPE_1__* msdos ;

__attribute__((used)) static void
pex_msdos_cleanup (struct pex_obj *obj)
{
  struct pex_msdos *ms;
  int i;

  ms = (struct pex_msdos *) obj->sysdep;
  for (i = 0; i < PEX_MSDOS_FILE_COUNT; ++i)
    if (msdos->files[i] != ((void*)0))
      free (msdos->files[i]);
  if (msdos->statuses != ((void*)0))
    free (msdos->statuses);
  free (msdos);
  obj->sysdep = ((void*)0);
}
