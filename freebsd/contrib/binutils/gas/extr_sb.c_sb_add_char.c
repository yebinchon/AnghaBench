
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* ptr; int len; } ;
typedef TYPE_1__ sb ;


 int sb_check (TYPE_1__*,int) ;

void
sb_add_char (sb *ptr, int c)
{
  sb_check (ptr, 1);
  ptr->ptr[ptr->len++] = c;
}
