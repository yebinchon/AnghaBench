
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct if_stack {size_t type; int line; struct if_stack* next; } ;
struct _cpp_file {int dummy; } ;
struct TYPE_10__ {scalar_t__ skipping; } ;
struct TYPE_11__ {int buffer_ob; TYPE_3__* buffer; TYPE_1__ state; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_12__ {int notes; struct TYPE_12__* prev; struct if_stack* if_stack; struct _cpp_file* file; } ;
typedef TYPE_3__ cpp_buffer ;
struct TYPE_13__ {int name; } ;


 int CPP_DL_ERROR ;
 int LC_LEAVE ;
 int _cpp_do_file_change (TYPE_2__*,int ,int ,int ,int ) ;
 int _cpp_pop_file_buffer (TYPE_2__*,struct _cpp_file*) ;
 int cpp_error_with_line (TYPE_2__*,int ,int ,int ,char*,int ) ;
 TYPE_5__* dtable ;
 int free (int ) ;
 int obstack_free (int *,TYPE_3__*) ;

void
_cpp_pop_buffer (cpp_reader *pfile)
{
  cpp_buffer *buffer = pfile->buffer;
  struct _cpp_file *inc = buffer->file;
  struct if_stack *ifs;



  for (ifs = buffer->if_stack; ifs; ifs = ifs->next)
    cpp_error_with_line (pfile, CPP_DL_ERROR, ifs->line, 0,
    "unterminated #%s", dtable[ifs->type].name);


  pfile->state.skipping = 0;


  pfile->buffer = buffer->prev;

  free (buffer->notes);



  obstack_free (&pfile->buffer_ob, buffer);

  if (inc)
    {
      _cpp_pop_file_buffer (pfile, inc);

      _cpp_do_file_change (pfile, LC_LEAVE, 0, 0, 0);
    }
}
