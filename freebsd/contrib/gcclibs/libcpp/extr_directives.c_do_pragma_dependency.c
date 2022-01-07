
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cpp_reader ;
struct TYPE_2__ {scalar_t__ type; } ;


 int CPP_DL_WARNING ;
 scalar_t__ CPP_EOF ;
 int _cpp_backup_tokens (int *,int) ;
 int _cpp_compare_file_date (int *,char const*,int) ;
 int cpp_error (int *,int ,char*,char const*) ;
 TYPE_1__* cpp_get_token (int *) ;
 int do_diagnostic (int *,int ,int ) ;
 int free (void*) ;
 char* parse_include (int *,int*,int *) ;

__attribute__((used)) static void
do_pragma_dependency (cpp_reader *pfile)
{
  const char *fname;
  int angle_brackets, ordering;

  fname = parse_include (pfile, &angle_brackets, ((void*)0));
  if (!fname)
    return;

  ordering = _cpp_compare_file_date (pfile, fname, angle_brackets);
  if (ordering < 0)
    cpp_error (pfile, CPP_DL_WARNING, "cannot find source file %s", fname);
  else if (ordering > 0)
    {
      cpp_error (pfile, CPP_DL_WARNING,
   "current file is older than %s", fname);
      if (cpp_get_token (pfile)->type != CPP_EOF)
 {
   _cpp_backup_tokens (pfile, 1);
   do_diagnostic (pfile, CPP_DL_WARNING, 0);
 }
    }

  free ((void *) fname);
}
