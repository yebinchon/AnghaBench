
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ errors; int deps; scalar_t__ buffer; } ;
typedef TYPE_1__ cpp_reader ;
struct TYPE_9__ {int phony_targets; int style; } ;
typedef int FILE ;


 scalar_t__ CPP_OPTION (TYPE_1__*,int ) ;
 scalar_t__ DEPS_NONE ;
 int _cpp_pop_buffer (TYPE_1__*) ;
 int _cpp_report_missing_guards (TYPE_1__*) ;
 int _cpp_warn_if_unused_macro ;
 int cpp_forall_identifiers (TYPE_1__*,int ,int *) ;
 TYPE_2__ deps ;
 int deps_phony_targets (int ,int *) ;
 int deps_write (int ,int *,int) ;
 int print_include_names ;
 int warn_unused_macros ;

int
cpp_finish (cpp_reader *pfile, FILE *deps_stream)
{

  if (CPP_OPTION (pfile, warn_unused_macros))
    cpp_forall_identifiers (pfile, _cpp_warn_if_unused_macro, ((void*)0));






  while (pfile->buffer)
    _cpp_pop_buffer (pfile);


  if (CPP_OPTION (pfile, deps.style) != DEPS_NONE
      && deps_stream && pfile->errors == 0)
    {
      deps_write (pfile->deps, deps_stream, 72);

      if (CPP_OPTION (pfile, deps.phony_targets))
 deps_phony_targets (pfile->deps, deps_stream);
    }


  if (CPP_OPTION (pfile, print_include_names))
    _cpp_report_missing_guards (pfile);

  return pfile->errors;
}
