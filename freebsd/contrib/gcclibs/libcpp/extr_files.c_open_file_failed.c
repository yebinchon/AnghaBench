
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int deps; TYPE_1__* buffer; TYPE_2__* line_table; } ;
typedef TYPE_3__ cpp_reader ;
struct TYPE_13__ {scalar_t__ err_no; int path; int name; } ;
typedef TYPE_4__ _cpp_file ;
struct TYPE_14__ {int style; int missing_files; } ;
struct TYPE_11__ {int highest_line; } ;
struct TYPE_10__ {int sysp; } ;


 int CPP_DL_ERROR ;
 int CPP_DL_WARNING ;
 int CPP_OPTION (TYPE_3__*,int ) ;
 scalar_t__ ENOENT ;
 int cpp_errno (TYPE_3__*,int ,int ) ;
 TYPE_7__ deps ;
 int deps_add_dep (int ,int ) ;
 scalar_t__ errno ;

__attribute__((used)) static void
open_file_failed (cpp_reader *pfile, _cpp_file *file, int angle_brackets)
{
  int sysp = pfile->line_table->highest_line > 1 && pfile->buffer ? pfile->buffer->sysp : 0;
  bool print_dep = CPP_OPTION (pfile, deps.style) > (angle_brackets || !!sysp);

  errno = file->err_no;
  if (print_dep && CPP_OPTION (pfile, deps.missing_files) && errno == ENOENT)
    deps_add_dep (pfile->deps, file->name);
  else
    {


      if (CPP_OPTION (pfile, deps.style) && ! print_dep)
 cpp_errno (pfile, CPP_DL_WARNING, file->path);
      else
 cpp_errno (pfile, CPP_DL_ERROR, file->path);
    }
}
