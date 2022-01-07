
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int skipping; } ;
struct TYPE_7__ {int mi_ind_cmacro; TYPE_1__ state; } ;
typedef TYPE_2__ cpp_reader ;


 int T_IF ;
 int _cpp_parse_expr (TYPE_2__*) ;
 int push_conditional (TYPE_2__*,int,int ,int ) ;

__attribute__((used)) static void
do_if (cpp_reader *pfile)
{
  int skip = 1;

  if (! pfile->state.skipping)
    skip = _cpp_parse_expr (pfile) == 0;

  push_conditional (pfile, skip, T_IF, pfile->mi_ind_cmacro);
}
