
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; scalar_t__ ptr; } ;
typedef TYPE_1__ sb ;


 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 int sb_check (TYPE_1__*,scalar_t__) ;

void
sb_add_sb (sb *ptr, sb *s)
{
  sb_check (ptr, s->len);
  memcpy (ptr->ptr + ptr->len, s->ptr, s->len);
  ptr->len += s->len;
}
