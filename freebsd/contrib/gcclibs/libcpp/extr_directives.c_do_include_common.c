
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef enum include_type { ____Placeholder_include_type } include_type ;
typedef int cpp_token ;
struct TYPE_15__ {int (* include ) (TYPE_5__*,int ,int ,char const*,int,int const**) ;} ;
struct TYPE_13__ {int save_comments; } ;
struct TYPE_17__ {TYPE_4__* directive; int directive_line; TYPE_3__ cb; TYPE_2__* line_table; TYPE_1__ state; } ;
typedef TYPE_5__ cpp_reader ;
struct TYPE_16__ {int name; } ;
struct TYPE_14__ {scalar_t__ depth; } ;


 int CPP_DL_ERROR ;
 int CPP_OPTION (TYPE_5__*,int ) ;
 scalar_t__ CPP_STACK_MAX ;
 int XDELETEVEC (char const*) ;
 int _cpp_stack_include (TYPE_5__*,char const*,int,int) ;
 int cpp_error (TYPE_5__*,int ,char*,...) ;
 int discard_comments ;
 char* parse_include (TYPE_5__*,int*,int const***) ;
 int skip_rest_of_line (TYPE_5__*) ;
 int stub1 (TYPE_5__*,int ,int ,char const*,int,int const**) ;

__attribute__((used)) static void
do_include_common (cpp_reader *pfile, enum include_type type)
{
  const char *fname;
  int angle_brackets;
  const cpp_token **buf = ((void*)0);



  pfile->state.save_comments = ! CPP_OPTION (pfile, discard_comments);

  fname = parse_include (pfile, &angle_brackets, &buf);
  if (!fname)
    {
      if (buf)
 XDELETEVEC (buf);
      return;
    }

  if (!*fname)
  {
    cpp_error (pfile, CPP_DL_ERROR, "empty filename in #%s",
               pfile->directive->name);
    XDELETEVEC (fname);
    if (buf)
      XDELETEVEC (buf);
    return;
  }


  if (pfile->line_table->depth >= CPP_STACK_MAX)
    cpp_error (pfile, CPP_DL_ERROR, "#include nested too deeply");
  else
    {

      skip_rest_of_line (pfile);

      if (pfile->cb.include)
 pfile->cb.include (pfile, pfile->directive_line,
      pfile->directive->name, fname, angle_brackets,
      buf);

      _cpp_stack_include (pfile, fname, angle_brackets, type);
    }

  XDELETEVEC (fname);
  if (buf)
    XDELETEVEC (buf);
}
