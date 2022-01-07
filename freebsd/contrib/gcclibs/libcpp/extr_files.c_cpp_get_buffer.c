
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buffer; } ;
typedef TYPE_1__ cpp_reader ;
typedef int cpp_buffer ;



cpp_buffer *
cpp_get_buffer (cpp_reader *pfile)
{
  return pfile->buffer;
}
