
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int str; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_3__ val; } ;
typedef TYPE_4__ cpp_token ;
struct TYPE_13__ {int (* ident ) (TYPE_5__*,int ,int *) ;} ;
struct TYPE_16__ {int directive_line; TYPE_2__ cb; TYPE_1__* directive; } ;
typedef TYPE_5__ cpp_reader ;
struct TYPE_12__ {int name; } ;


 int CPP_DL_ERROR ;
 scalar_t__ CPP_STRING ;
 int check_eol (TYPE_5__*) ;
 int cpp_error (TYPE_5__*,int ,char*,int ) ;
 TYPE_4__* cpp_get_token (TYPE_5__*) ;
 int stub1 (TYPE_5__*,int ,int *) ;

__attribute__((used)) static void
do_ident (cpp_reader *pfile)
{
  const cpp_token *str = cpp_get_token (pfile);

  if (str->type != CPP_STRING)
    cpp_error (pfile, CPP_DL_ERROR, "invalid #%s directive",
        pfile->directive->name);
  else if (pfile->cb.ident)
    pfile->cb.ident (pfile, pfile->directive_line, &str->val.str);

  check_eol (pfile);
}
