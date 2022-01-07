
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pragmas; } ;
typedef TYPE_1__ cpp_reader ;


 int free (char**) ;
 int restore_registered_pragmas (TYPE_1__*,int ,char**) ;

void
_cpp_restore_pragma_names (cpp_reader *pfile, char **saved)
{
  (void) restore_registered_pragmas (pfile, pfile->pragmas, saved);
  free (saved);
}
