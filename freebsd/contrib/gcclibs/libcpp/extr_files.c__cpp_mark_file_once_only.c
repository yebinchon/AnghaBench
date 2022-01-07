
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int seen_once_only; } ;
typedef TYPE_1__ cpp_reader ;
struct TYPE_6__ {int once_only; } ;
typedef TYPE_2__ _cpp_file ;



void
_cpp_mark_file_once_only (cpp_reader *pfile, _cpp_file *file)
{
  pfile->seen_once_only = 1;
  file->once_only = 1;
}
