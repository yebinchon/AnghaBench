
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; scalar_t__ ptr; } ;
typedef TYPE_1__ sb ;


 int memcpy (scalar_t__,char const*,int) ;
 int sb_check (TYPE_1__*,int) ;

void
sb_add_buffer (sb *ptr, const char *s, int len)
{
  sb_check (ptr, len);
  memcpy (ptr->ptr + ptr->len, s, len);
  ptr->len += len;
}
