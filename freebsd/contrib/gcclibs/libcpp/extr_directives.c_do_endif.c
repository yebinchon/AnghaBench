
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct if_stack {scalar_t__ was_skipping; struct if_stack* next; scalar_t__ mi_cmacro; } ;
struct TYPE_8__ {scalar_t__ skipping; } ;
struct TYPE_9__ {int mi_valid; int buffer_ob; TYPE_1__ state; scalar_t__ mi_cmacro; TYPE_3__* buffer; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_10__ {struct if_stack* if_stack; } ;
typedef TYPE_3__ cpp_buffer ;


 int CPP_DL_ERROR ;
 scalar_t__ CPP_OPTION (TYPE_2__*,int ) ;
 int check_eol (TYPE_2__*) ;
 int cpp_error (TYPE_2__*,int ,char*) ;
 int obstack_free (int *,struct if_stack*) ;
 int warn_endif_labels ;

__attribute__((used)) static void
do_endif (cpp_reader *pfile)
{
  cpp_buffer *buffer = pfile->buffer;
  struct if_stack *ifs = buffer->if_stack;

  if (ifs == ((void*)0))
    cpp_error (pfile, CPP_DL_ERROR, "#endif without #if");
  else
    {

      if (!ifs->was_skipping && CPP_OPTION (pfile, warn_endif_labels))
 check_eol (pfile);


      if (ifs->next == 0 && ifs->mi_cmacro)
 {
   pfile->mi_valid = 1;
   pfile->mi_cmacro = ifs->mi_cmacro;
 }

      buffer->if_stack = ifs->next;
      pfile->state.skipping = ifs->was_skipping;
      obstack_free (&pfile->buffer_ob, ifs);
    }
}
