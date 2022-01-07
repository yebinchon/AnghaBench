
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* line_table; int main_file; int no_search_path; scalar_t__ deps; } ;
typedef TYPE_3__ cpp_reader ;
struct TYPE_13__ {int style; } ;
struct TYPE_11__ {int used; TYPE_1__* maps; } ;
struct TYPE_10__ {char* to_file; } ;


 scalar_t__ CPP_OPTION (TYPE_3__*,int ) ;
 scalar_t__ DEPS_NONE ;
 scalar_t__ _cpp_find_failed (int ) ;
 int _cpp_find_file (TYPE_3__*,char const*,int *,int,int ) ;
 int _cpp_stack_file (TYPE_3__*,int ,int) ;
 TYPE_5__ deps ;
 int deps_add_default_target (scalar_t__,char const*) ;
 scalar_t__ deps_init () ;
 int preprocessed ;
 int read_original_filename (TYPE_3__*) ;

const char *
cpp_read_main_file (cpp_reader *pfile, const char *fname)
{
  if (CPP_OPTION (pfile, deps.style) != DEPS_NONE)
    {
      if (!pfile->deps)
 pfile->deps = deps_init ();


      deps_add_default_target (pfile->deps, fname);
    }

  pfile->main_file
    = _cpp_find_file (pfile, fname, &pfile->no_search_path, 0, 0);
  if (_cpp_find_failed (pfile->main_file))
    return ((void*)0);

  _cpp_stack_file (pfile, pfile->main_file, 0);



  if (CPP_OPTION (pfile, preprocessed))
    {
      read_original_filename (pfile);
      fname = pfile->line_table->maps[pfile->line_table->used-1].to_file;
    }
  return fname;
}
