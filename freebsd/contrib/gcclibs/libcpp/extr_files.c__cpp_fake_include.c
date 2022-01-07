
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* buffer; } ;
typedef TYPE_3__ cpp_reader ;
struct TYPE_7__ {TYPE_1__* file; } ;
struct TYPE_6__ {int dir; } ;


 int _cpp_find_file (TYPE_3__*,char const*,int ,int,int ) ;

void
_cpp_fake_include (cpp_reader *pfile, const char *fname)
{
  _cpp_find_file (pfile, fname, pfile->buffer->file->dir, 1, 0);
}
