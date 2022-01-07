
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct if_stack {scalar_t__ type; int skip_elses; scalar_t__ mi_cmacro; int line; } ;
struct TYPE_8__ {int skipping; } ;
struct TYPE_9__ {TYPE_1__ state; TYPE_3__* buffer; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_10__ {struct if_stack* if_stack; } ;
typedef TYPE_3__ cpp_buffer ;


 int CPP_DL_ERROR ;
 scalar_t__ T_ELIF ;
 scalar_t__ T_ELSE ;
 int _cpp_parse_expr (TYPE_2__*) ;
 int cpp_error (TYPE_2__*,int ,char*) ;
 int cpp_error_with_line (TYPE_2__*,int ,int ,int ,char*) ;

__attribute__((used)) static void
do_elif (cpp_reader *pfile)
{
  cpp_buffer *buffer = pfile->buffer;
  struct if_stack *ifs = buffer->if_stack;

  if (ifs == ((void*)0))
    cpp_error (pfile, CPP_DL_ERROR, "#elif without #if");
  else
    {
      if (ifs->type == T_ELSE)
 {
   cpp_error (pfile, CPP_DL_ERROR, "#elif after #else");
   cpp_error_with_line (pfile, CPP_DL_ERROR, ifs->line, 0,
          "the conditional began here");
 }
      ifs->type = T_ELIF;



      if (ifs->skip_elses)
 pfile->state.skipping = 1;
      else
 {
   pfile->state.skipping = 0;
   pfile->state.skipping = ! _cpp_parse_expr (pfile);
   ifs->skip_elses = ! pfile->state.skipping;
 }


      ifs->mi_cmacro = 0;
    }
}
