
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mi_valid; int * mi_cmacro; } ;
typedef TYPE_1__ cpp_reader ;
struct TYPE_6__ {int buffer_valid; int * buffer; int * cmacro; } ;
typedef TYPE_2__ _cpp_file ;


 int free (void*) ;

void
_cpp_pop_file_buffer (cpp_reader *pfile, _cpp_file *file)
{


  if (pfile->mi_valid && file->cmacro == ((void*)0))
    file->cmacro = pfile->mi_cmacro;


  pfile->mi_valid = 0;

  if (file->buffer)
    {
      free ((void *) file->buffer);
      file->buffer = ((void*)0);
      file->buffer_valid = 0;
    }
}
