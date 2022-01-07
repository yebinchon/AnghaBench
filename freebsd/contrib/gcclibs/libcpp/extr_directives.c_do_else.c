
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct if_stack {scalar_t__ type; int skip_elses; int was_skipping; scalar_t__ mi_cmacro; int line; } ;
struct TYPE_9__ {int skipping; } ;
struct TYPE_10__ {TYPE_1__ state; TYPE_3__* buffer; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_11__ {struct if_stack* if_stack; } ;
typedef TYPE_3__ cpp_buffer ;


 int CPP_DL_ERROR ;
 scalar_t__ CPP_OPTION (TYPE_2__*,int ) ;
 scalar_t__ T_ELSE ;
 int check_eol (TYPE_2__*) ;
 int cpp_error (TYPE_2__*,int ,char*) ;
 int cpp_error_with_line (TYPE_2__*,int ,int ,int ,char*) ;
 int warn_endif_labels ;

__attribute__((used)) static void
do_else (cpp_reader *pfile)
{
  cpp_buffer *buffer = pfile->buffer;
  struct if_stack *ifs = buffer->if_stack;

  if (ifs == ((void*)0))
    cpp_error (pfile, CPP_DL_ERROR, "#else without #if");
  else
    {
      if (ifs->type == T_ELSE)
 {
   cpp_error (pfile, CPP_DL_ERROR, "#else after #else");
   cpp_error_with_line (pfile, CPP_DL_ERROR, ifs->line, 0,
          "the conditional began here");
 }
      ifs->type = T_ELSE;


      pfile->state.skipping = ifs->skip_elses;
      ifs->skip_elses = 1;


      ifs->mi_cmacro = 0;


      if (!ifs->was_skipping && CPP_OPTION (pfile, warn_endif_labels))
 check_eol (pfile);
    }
}
