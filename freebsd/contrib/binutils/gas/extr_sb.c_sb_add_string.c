
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; scalar_t__ ptr; } ;
typedef TYPE_1__ sb ;


 int memcpy (scalar_t__,char const*,int) ;
 int sb_check (TYPE_1__*,int) ;
 int strlen (char const*) ;

void
sb_add_string (sb *ptr, const char *s)
{
  int len = strlen (s);
  sb_check (ptr, len);
  memcpy (ptr->ptr + ptr->len, s, len);
  ptr->len += len;
}
