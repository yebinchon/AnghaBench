
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_7__ {int file; int * prev; } ;


 int CPP_DL_WARNING ;
 int _cpp_mark_file_once_only (TYPE_2__*,int ) ;
 int check_eol (TYPE_2__*) ;
 int cpp_error (TYPE_2__*,int ,char*) ;

__attribute__((used)) static void
do_pragma_once (cpp_reader *pfile)
{
  if (pfile->buffer->prev == ((void*)0))
    cpp_error (pfile, CPP_DL_WARNING, "#pragma once in main file");

  check_eol (pfile);
  _cpp_mark_file_once_only (pfile, pfile->buffer->file);
}
