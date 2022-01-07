
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int cpp_reader ;
struct TYPE_7__ {int cur; int base; struct TYPE_7__* next; } ;
typedef TYPE_1__ _cpp_buff ;


 int BUFF_ROOM (TYPE_1__*) ;
 size_t EXTENDED_BUFF_SIZE (TYPE_1__*,size_t) ;
 TYPE_1__* _cpp_get_buff (int *,size_t) ;
 int memcpy (int ,int ,int ) ;

_cpp_buff *
_cpp_append_extend_buff (cpp_reader *pfile, _cpp_buff *buff, size_t min_extra)
{
  size_t size = EXTENDED_BUFF_SIZE (buff, min_extra);
  _cpp_buff *new_buff = _cpp_get_buff (pfile, size);

  buff->next = new_buff;
  memcpy (new_buff->base, buff->cur, BUFF_ROOM (buff));
  return new_buff;
}
