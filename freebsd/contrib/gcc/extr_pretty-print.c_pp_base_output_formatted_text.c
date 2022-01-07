
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct chunk_info {char** args; struct chunk_info* prev; } ;
typedef int pretty_printer ;
struct TYPE_3__ {scalar_t__ line_length; int chunk_obstack; struct chunk_info* cur_chunk_array; int formatted_obstack; int * obstack; } ;
typedef TYPE_1__ output_buffer ;


 int gcc_assert (int) ;
 int obstack_free (int *,struct chunk_info*) ;
 TYPE_1__* pp_buffer (int *) ;
 int pp_string (int *,char const*) ;

void
pp_base_output_formatted_text (pretty_printer *pp)
{
  unsigned int chunk;
  output_buffer *buffer = pp_buffer (pp);
  struct chunk_info *chunk_array = buffer->cur_chunk_array;
  const char **args = chunk_array->args;

  gcc_assert (buffer->obstack == &buffer->formatted_obstack);
  gcc_assert (buffer->line_length == 0);



  for (chunk = 0; args[chunk]; chunk++)
    pp_string (pp, args[chunk]);



  buffer->cur_chunk_array = chunk_array->prev;
  obstack_free (&buffer->chunk_obstack, chunk_array);
}
