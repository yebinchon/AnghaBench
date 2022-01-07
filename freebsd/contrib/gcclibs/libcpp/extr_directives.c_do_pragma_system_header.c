
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* buffer; } ;
typedef TYPE_1__ cpp_reader ;
struct TYPE_9__ {scalar_t__ prev; } ;
typedef TYPE_2__ cpp_buffer ;


 int CPP_DL_WARNING ;
 int check_eol (TYPE_1__*) ;
 int cpp_error (TYPE_1__*,int ,char*) ;
 int cpp_make_system_header (TYPE_1__*,int,int ) ;
 int skip_rest_of_line (TYPE_1__*) ;

__attribute__((used)) static void
do_pragma_system_header (cpp_reader *pfile)
{
  cpp_buffer *buffer = pfile->buffer;

  if (buffer->prev == 0)
    cpp_error (pfile, CPP_DL_WARNING,
        "#pragma system_header ignored outside include file");
  else
    {
      check_eol (pfile);
      skip_rest_of_line (pfile);
      cpp_make_system_header (pfile, 1, 0);
    }
}
