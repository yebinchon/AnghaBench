
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* prev; } ;
typedef TYPE_1__ cpp_buffer ;



cpp_buffer *
cpp_get_prev (cpp_buffer *b)
{
  return b->prev;
}
