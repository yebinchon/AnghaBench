
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int cpp_reader ;
struct TYPE_6__ {struct TYPE_6__* next; int cur; int base; } ;
typedef TYPE_1__ _cpp_buff ;


 int BUFF_ROOM (TYPE_1__*) ;
 size_t EXTENDED_BUFF_SIZE (TYPE_1__*,size_t) ;
 TYPE_1__* _cpp_get_buff (int *,size_t) ;
 int memcpy (int ,int ,int ) ;

void
_cpp_extend_buff (cpp_reader *pfile, _cpp_buff **pbuff, size_t min_extra)
{
  _cpp_buff *new_buff, *old_buff = *pbuff;
  size_t size = EXTENDED_BUFF_SIZE (old_buff, min_extra);

  new_buff = _cpp_get_buff (pfile, size);
  memcpy (new_buff->base, old_buff->cur, BUFF_ROOM (old_buff));
  new_buff->next = old_buff;
  *pbuff = new_buff;
}
